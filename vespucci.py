"""
Minecraft map loader.
"""

from anvil import Region


def main():
    print(f"Hello, Vespucci!")
    region = Region.from_file("./map_0.dat")
    print(f"Region loaded. Data length: {len(region.data)}")
    chunk = None
    for x in range(-1024, 1024):
        for z in range(-1024, 1024):
            try:
                chunk = region.get_chunk(x, z)
                print(f"Found chunk at x={x}, z={z}")
            except IndexError:
                pass
            except Exception as e:
                if "Unexistent" not in str(e):
                    raise
    if chunk is not None:
        print(f"Chunk loaded. {chunk}")


if __name__ == "__main__":
    main()
