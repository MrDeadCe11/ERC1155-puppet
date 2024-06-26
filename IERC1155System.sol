// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

/**
 * @title IERC1155System
 * @author MUD (https://mud.dev) by Lattice (https://lattice.xyz)
 * @dev This interface is automatically generated from the corresponding system contract. Do not edit manually.
 */
interface IERC1155System {
    function setApprovalForAll(address operator, bool approved) external;

    function isApprovedForAll(address owner, address operator) external view returns (bool);

    function transferFrom(address from, address to, uint256 tokenId, uint256 value) external;

    function safeTransferFrom(address from, address to, uint256 tokenId, uint256 value) external;

    function safeTransferFrom(address from, address to, uint256 tokenId, uint256 value, bytes memory data) external;

    function safeBatchTransferFrom(
        address from,
        address to,
        uint256[] calldata ids,
        uint256[] calldata values,
        bytes calldata data
    ) external;

    // function mint(address to, uint256 tokenId, uint256 value) external;

    function mint(address to, uint256 tokenId, uint256 value, bytes memory data) external;

    function safeMint(address to, uint256 tokenId, uint256 value) external;

    function safeMint(address to, uint256 tokenId, uint256 value, bytes memory data) external;

    function burn(uint256 tokenId, uint256 value) external;

    function balanceOf(address owner, uint256 id) external view returns (uint256);

    function balanceOfBatch(address[] memory accounts, uint256[] memory ids) external view returns (uint256[] memory);

    function uri(uint256 tokenId) external view returns (string memory);

    function setTokenURI(uint256 tokenId, string memory tokenURI) external;

    function totalSupply(uint256 tokenId) external view returns (uint256 _totalSupply);

    function onERC1155Received(address, address, uint256, uint256, bytes calldata) external returns (bytes4 retval);

    function onERC1155BatchReceived(address, address, uint256[] calldata, uint256[] calldata, bytes calldata)
        external
        returns (bytes4 retval);
}
