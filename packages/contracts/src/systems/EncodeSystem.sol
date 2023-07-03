// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

import { System } from "@latticexyz/world/src/System.sol";

/**
 * @title
 * @author
 * @notice encode and decode system
 */
contract EncodeSystem is System {
  function encodeHero(uint32 creatureId, uint32 tier) public pure returns (uint64) {
    return (uint64(creatureId) << 32) | uint32(tier);
  }

  function decodeHero(uint64 hero) public pure returns (uint32 creatureId, uint32 tier) {
    creatureId = uint32(hero >> 32);
    tier = uint32(hero);
  }

  function decodeHeroToCreature(uint64 hero) public pure returns (uint32 creatureId) {
    creatureId = uint32(hero >> 32);
  }

  function decodeHeroToTier(uint64 hero) public pure returns (uint32 tier) {
    tier = uint32(hero);
  }
}