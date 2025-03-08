import argparse
import os
import random
from Env import Env
from control_agent import control_agent
from monitor import DataMonitor

parser = argparse.ArgumentParser()
parser.add_argument(
    "--stop-iters",
    type=int,
    default=200,
    help="Number of iterations to train before we do inference.",
)
parser.add_argument(
    "--stop-timesteps",
    type=int,
    default=100000,
    help="Number of timesteps to train before we do inference.",
)
parser.add_argument(
    "--explore-during-inference",
    action="store_true",
    help="Whether the trained policy should use exploration during action inference.",
)
parser.add_argument(
    "--num-episodes-during-inference",
    type=int,
    default=10,
    help="Number of episodes to do inference over after training.",
)
parser.add_argument(
    "--traffic-light",
    action="store_true",
    help="Whether to enable traffic lights in the simulation.",
)

args = parser.parse_args()

def main():
    # Environment configuration
    env_config = {
        "junction_list": ['229', '499', '332', '334'],
        "spawn_rl_prob": {},
        "probablity_RL": 0.0,
        "cfg": 'real_data/osm.sumocfg',
        "render": True,
        "map_xml": 'real_data/CSeditClean_1.net_threelegs.xml',
        "max_episode_steps": args.stop_timesteps,
        "traffic_light_program": {
            "disable_state": 'G',
            "disable_light_start": 20000 if args.traffic_light else 0
        }
    }

    # Initialize the environment
    env = Env(env_config)
    monitor = DataMonitor(env)

    # Initialize the control agent
    control_agent_instance = control_agent(env, yellow_step_length=5, control_circle_length=15)

    for episode in range(args.num_episodes_during_inference):
        obs, info = env.reset(options={'mode': 'HARD'})
        done = False
        while not done:
            actions = {}
            for agent_id in obs.keys():
                actions[agent_id] = control_agent_instance.get_result(env.get_facing_intersection(agent_id), agent_id)
            obs, reward, dones, truncated, info = env.step(actions)
            done = dones['__all__']
            control_agent_instance.step()

        # Evaluate and save the results
        monitor.evaluate()
        save_path = f"results/episode_{episode}_results.pkl"
        monitor.save_to_pickle(file_name=save_path)

    env.close()

if __name__ == "__main__":
    main()