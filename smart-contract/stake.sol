// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// File: @openzeppelin/contracts/utils/math/SafeMath.sol


// OpenZeppelin Contracts v4.4.1 (utils/math/SafeMath.sol)

// CAUTION
// This version of SafeMath should only be used with Solidity 0.8 or later,
// because it relies on the compiler's built in overflow checks.

/**
 * @dev Wrappers over Solidity's arithmetic operations.
 *
 * NOTE: `SafeMath` is generally not needed starting with Solidity 0.8, since the compiler
 * now has built in overflow checking.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            uint256 c = a + b;
            if (c < a) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the substraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b > a) return (false, 0);
            return (true, a - b);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
            // benefit is lost if 'b' is also tested.
            // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
            if (a == 0) return (true, 0);
            uint256 c = a * b;
            if (c / a != b) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a / b);
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a % b);
        }
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        return a * b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator.
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b <= a, errorMessage);
            return a - b;
        }
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a / b;
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a % b;
        }
    }
}

// File: @openzeppelin/contracts/utils/Context.sol

// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}

// File: @openzeppelin/contracts/token/ERC20/IERC20.sol

// OpenZeppelin Contracts (last updated v4.5.0) (token/ERC20/IERC20.sol)

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);

    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

// File: @openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol


// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/IERC20Metadata.sol)

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 *
 * _Available since v4.1._
 */
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}

// File: @openzeppelin/contracts/token/ERC20/ERC20.sol


// OpenZeppelin Contracts (last updated v4.5.0) (token/ERC20/ERC20.sol)

/**
 * @dev Implementation of the {IERC20} interface.
 *
 * This implementation is agnostic to the way tokens are created. This means
 * that a supply mechanism has to be added in a derived contract using {_mint}.
 * For a generic mechanism see {ERC20PresetMinterPauser}.
 *
 * TIP: For a detailed writeup see our guide
 * https://forum.zeppelin.solutions/t/how-to-implement-erc20-supply-mechanisms/226[How
 * to implement supply mechanisms].
 *
 * We have followed general OpenZeppelin Contracts guidelines: functions revert
 * instead returning `false` on failure. This behavior is nonetheless
 * conventional and does not conflict with the expectations of ERC20
 * applications.
 *
 * Additionally, an {Approval} event is emitted on calls to {transferFrom}.
 * This allows applications to reconstruct the allowance for all accounts just
 * by listening to said events. Other implementations of the EIP may not emit
 * these events, as it isn't required by the specification.
 *
 * Finally, the non-standard {decreaseAllowance} and {increaseAllowance}
 * functions have been added to mitigate the well-known issues around setting
 * allowances. See {IERC20-approve}.
 */
contract ERC20 is Context, IERC20, IERC20Metadata {
    mapping(address => uint256) private _balances;

    mapping(address => mapping(address => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * The default value of {decimals} is 18. To select a different value for
     * {decimals} you should overload it.
     *
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
    constructor(string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual override returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual override returns (string memory) {
        return _symbol;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5.05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the value {ERC20} uses, unless this function is
     * overridden;
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view virtual override returns (uint8) {
        return 18;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual override returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account) public view virtual override returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `amount`.
     */
    function transfer(address to, uint256 amount) public virtual override returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, amount);
        return true;
    }

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address owner, address spender) public view virtual override returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * NOTE: If `amount` is the maximum `uint256`, the allowance is not updated on
     * `transferFrom`. This is semantically equivalent to an infinite approval.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 amount) public virtual override returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, amount);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `amount`.
     */
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public virtual override returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, amount);
        _transfer(from, to, amount);
        return true;
    }

    /**
     * @dev Atomically increases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, _allowances[owner][spender] + addedValue);
        return true;
    }

    /**
     * @dev Atomically decreases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `spender` must have allowance for the caller of at least
     * `subtractedValue`.
     */
    function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool) {
        address owner = _msgSender();
        uint256 currentAllowance = _allowances[owner][spender];
        require(currentAllowance >= subtractedValue, "ERC20: decreased allowance below zero");
        unchecked {
            _approve(owner, spender, currentAllowance - subtractedValue);
        }

        return true;
    }

    /**
     * @dev Moves `amount` of tokens from `sender` to `recipient`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     */
    function _transfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual {
        require(from != address(0), "ERC20: transfer from the zero address");
        require(to != address(0), "ERC20: transfer to the zero address");

        _beforeTokenTransfer(from, to, amount);

        uint256 fromBalance = _balances[from];
        require(fromBalance >= amount, "ERC20: transfer amount exceeds balance");
        unchecked {
            _balances[from] = fromBalance - amount;
        }
        _balances[to] += amount;

        emit Transfer(from, to, amount);

        _afterTokenTransfer(from, to, amount);
    }

    /** @dev Creates `amount` tokens and assigns them to `account`, increasing
     * the total supply.
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */
    function _mint(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: mint to the zero address");

        _beforeTokenTransfer(address(0), account, amount);

        _totalSupply += amount;
        _balances[account] += amount;
        emit Transfer(address(0), account, amount);

        _afterTokenTransfer(address(0), account, amount);
    }

    /**
     * @dev Destroys `amount` tokens from `account`, reducing the
     * total supply.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     * - `account` must have at least `amount` tokens.
     */
    function _burn(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: burn from the zero address");

        _beforeTokenTransfer(account, address(0), amount);

        uint256 accountBalance = _balances[account];
        require(accountBalance >= amount, "ERC20: burn amount exceeds balance");
        unchecked {
            _balances[account] = accountBalance - amount;
        }
        _totalSupply -= amount;

        emit Transfer(account, address(0), amount);

        _afterTokenTransfer(account, address(0), amount);
    }

    /**
     * @dev Sets `amount` as the allowance of `spender` over the `owner` s tokens.
     *
     * This internal function is equivalent to `approve`, and can be used to
     * e.g. set automatic allowances for certain subsystems, etc.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `owner` cannot be the zero address.
     * - `spender` cannot be the zero address.
     */
    function _approve(
        address owner,
        address spender,
        uint256 amount
    ) internal virtual {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");

        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }

    /**
     * @dev Spend `amount` form the allowance of `owner` toward `spender`.
     *
     * Does not update the allowance amount in case of infinite allowance.
     * Revert if not enough allowance is available.
     *
     * Might emit an {Approval} event.
     */
    function _spendAllowance(
        address owner,
        address spender,
        uint256 amount
    ) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            require(currentAllowance >= amount, "ERC20: insufficient allowance");
            unchecked {
                _approve(owner, spender, currentAllowance - amount);
            }
        }
    }

    /**
     * @dev Hook that is called before any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * will be transferred to `to`.
     * - when `from` is zero, `amount` tokens will be minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens will be burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual {}

    /**
     * @dev Hook that is called after any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * has been transferred to `to`.
     * - when `from` is zero, `amount` tokens have been minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens have been burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _afterTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual {}
}

/**
 * @title StakeToken
 * @notice Represents a contract where a token owner has put her tokens up for others to stake and earn said tokens.
 */
contract StakeToken is ERC20 {
  using SafeMath for uint256;
  bool public contractIsRemoved = false;

  IERC20 private _rewardsToken;
  IERC20 private _stakedERC20;
  PoolInfo public pool;
  uint256 public temp;
  address private constant _burner = 0x000000000000000000000000000000000000dEaD;

  struct PoolInfo {
    address creator; // address of contract creator
    address tokenOwner; // address of original rewards token owner
    uint256 origTotSupply; // supply of rewards tokens put up to be rewarded by original owner
    uint256 curRewardsSupply; // current supply of rewards
    uint256 totalTokensStaked; // current amount of tokens staked
    uint256 creationBlock; // block this contract was created
    uint256 perBlockNum; // amount of rewards tokens rewarded per block
    uint256 lockedUntilDate; // unix timestamp of how long this contract is locked and can't be changed
    uint256 lastRewardBlock; // Last block number that ERC20s distribution occurs.
    uint256 accERC20PerShare; // Accumulated ERC20s per share, times 1e36.
    uint256 stakeTimeLockSec; // number of seconds after depositing the user is required to stake before unstaking
  }

  struct StakerInfo {
    uint256 blockOriginallyStaked; // block the user originally staked
    uint256 timeOriginallyStaked; // unix timestamp in seconds that the user originally staked
    uint256 blockLastHarvested; // the block the user last claimed/harvested rewards
    uint256 rewardDebt; // Reward debt. See explanation below.
  }

  struct BlockTokenTotal {
    uint256 blockNumber;
    uint256 totalTokens;
  }

  // mapping of userAddresses => tokenAddresses that can
  // can be evaluated to determine for a particular user which tokens
  // they are staking.
  mapping(address => StakerInfo) public stakers;

  // mapping of userAddresses => total reward paid amount
  mapping(address => uint256) public totalRewardPaid;

  event Deposit(address indexed user, uint256 amount);
  event Withdraw(address indexed user, uint256 amount);
  event debuger(address indexed user, uint256 amount);
  /**
   * @notice The constructor for the Staking Token.
   * @param _rewardSupply The amount of tokens to mint on construction, this should be the same as the tokens provided by the creating user.
   * @param _rewardsTokenAddy Contract address of token to be rewarded to users
   * @param _stakedTokenAddy Contract address of token to be staked by users
   * @param _originalTokenOwner Address of user putting up staking tokens to be staked
   * @param _perBlockAmount Amount of tokens to be rewarded per block
   * @param _lockedUntilDate Unix timestamp that the staked tokens will be locked. 0 means locked forever until all tokens are staked
   * @param _stakeTimeLockSec number of seconds a user is required to stake, or 0 if none
   */
  constructor(
    uint256 _rewardSupply,
    address _rewardsTokenAddy,
    address _stakedTokenAddy,
    address _originalTokenOwner,
    uint256 _perBlockAmount,
    uint256 _lockedUntilDate,
    uint256 _stakeTimeLockSec
  ) ERC20("stakingtoken", "STT") {
    require(
      _perBlockAmount > uint256(0) && _perBlockAmount <= uint256(_rewardSupply),
      'per block amount must be more than 0 and less than supply'
    );

    // A locked date of '0' corresponds to being locked forever until the supply has expired and been rewards to all stakers
    require(
      _lockedUntilDate > block.timestamp || _lockedUntilDate == 0,
      'locked time must be after now or 0'
    );

    _rewardsToken = IERC20(_rewardsTokenAddy);
    _stakedERC20 = IERC20(_stakedTokenAddy);

    pool = PoolInfo({
      creator: msg.sender,
      tokenOwner: _originalTokenOwner,
      origTotSupply: _rewardSupply,
      curRewardsSupply: _rewardSupply,
      totalTokensStaked: 0,
      creationBlock: 0,
      perBlockNum: _perBlockAmount,
      lockedUntilDate: _lockedUntilDate,
      lastRewardBlock: block.number,
      accERC20PerShare: 0,
      stakeTimeLockSec: _stakeTimeLockSec
    });
  }

  // SHOULD ONLY BE CALLED AT CONTRACT CREATION and allows changing
  // the initial supply if tokenomics of token transfer causes
  // the original staking contract supply to be less than the original
  function updateSupply(uint256 _newSupply) external {
    require(
      msg.sender == pool.creator,
      'only contract creator can update the supply'
    );
    pool.origTotSupply = _newSupply;
    pool.curRewardsSupply = _newSupply;
  }

  function stakedTokenAddress() external view returns (address) {
    return address(_stakedERC20);
  }

  function rewardsTokenAddress() external view returns (address) {
    return address(_rewardsToken);
  }

  function tokenOwner() external view returns (address) {
    return pool.tokenOwner;
  }

  function getLockedUntilDate() external view returns (uint256) {
    return pool.lockedUntilDate;
  }

  function removeStakeableTokens() external {
    require(
      msg.sender == pool.creator || msg.sender == pool.tokenOwner,
      'caller must be the contract creator or owner to remove stakable tokens'
    );
    _rewardsToken.transfer(pool.tokenOwner, pool.curRewardsSupply);
    pool.curRewardsSupply = 0;
    contractIsRemoved = true;
  }

  function stakeTokens(uint256 _amount) public {
    require(
      getLastStakableBlock() > block.number,
      'this farm is expired and no more stakers can be added'
    );
    
    _updatePool();

    if (balanceOf(msg.sender) > 0) {
      _harvestTokens(msg.sender);
    }

    uint256 _finalAmountTransferred;
    uint256 _contractBalanceBefore = _stakedERC20.balanceOf(address(this));
    _stakedERC20.transferFrom(msg.sender, address(this), _amount);

    // in the event a token contract on transfer taxes, burns, etc. tokens
    // the contract might not get the entire amount that the user originally
    // transferred. Need to calculate from the previous contract balance
    // so we know how many were actually transferred.
    _finalAmountTransferred = _stakedERC20.balanceOf(address(this)).sub(
      _contractBalanceBefore
    );

    if (totalSupply() == 0) {
      pool.creationBlock = block.number;
      pool.lastRewardBlock = block.number;
    }
    _mint(msg.sender, _finalAmountTransferred);
    StakerInfo storage _staker = stakers[msg.sender];
    _staker.blockOriginallyStaked = block.number;
    _staker.timeOriginallyStaked = block.timestamp;
    _staker.blockLastHarvested = block.number;
    _staker.rewardDebt = balanceOf(msg.sender).mul(pool.accERC20PerShare).div(
      1e36
    );

    _updNumStaked(_finalAmountTransferred, 'add');

    emit Deposit(msg.sender, _finalAmountTransferred);
  }

  // pass 'false' for _shouldHarvest for emergency unstaking without claiming rewards
  function unstakeTokens(uint256 _amount, bool _shouldHarvest) external {
    StakerInfo memory _staker = stakers[msg.sender];
    uint256 _userBalance = balanceOf(msg.sender);

    require(
      _amount <= _userBalance,
      'user can only unstake amount they have currently staked or less'
    );
    // allow unstaking if the user is emergency unstaking and not getting rewards or
    // if theres a time lock that it's past the time lock or
    // the contract rewards were removed by the original contract creator or
    // the contract is expired
    require(
      !_shouldHarvest ||
        block.timestamp >=
        _staker.timeOriginallyStaked.add(pool.stakeTimeLockSec) ||
        contractIsRemoved ||
        block.number > getLastStakableBlock(),
      'you have not staked for minimum time lock yet and the pool is not expired'
    );

    _updatePool();

    if (_shouldHarvest) {
      _harvestTokens(msg.sender);
    }

    uint256 _amountToRemoveFromStaked = _amount;

    transfer(_burner, _amountToRemoveFromStaked);

    require(
      _stakedERC20.transfer(msg.sender, _amountToRemoveFromStaked),
      'unable to send user original tokens'
    );

    if (balanceOf(msg.sender) <= 0) {
      delete stakers[msg.sender];
    }

    _staker.blockLastHarvested = block.number;
    _staker.rewardDebt = balanceOf(msg.sender).mul(pool.accERC20PerShare).div(
      1e36
    );

    _updNumStaked(_amountToRemoveFromStaked, 'remove');

    emit Withdraw(msg.sender, _amountToRemoveFromStaked);
  }

  function emergencyUnstake() external {
    uint256 _amountToRemoveFromStaked = balanceOf(msg.sender);
    require(
      _amountToRemoveFromStaked > 0,
      'user can only unstake if they have tokens in the pool'
    );

    transfer(_burner, _amountToRemoveFromStaked);

    require(
      _stakedERC20.transfer(msg.sender, _amountToRemoveFromStaked),
      'unable to send user original tokens'
    );
    
    delete stakers[msg.sender];
    _updNumStaked(_amountToRemoveFromStaked, 'remove');
    emit Withdraw(msg.sender, _amountToRemoveFromStaked);
  }

  function harvestForUser(address _userAddy)
    external
    returns (uint256)
  {
    require(
      msg.sender == pool.creator || msg.sender == _userAddy,
      'can only harvest tokens for someone else if this was the contract creator'
    );
    _updatePool();
    uint256 _tokensToUser = _harvestTokens(_userAddy);

    return _tokensToUser;
  }

  function getTotalRewardPaid(address _userAddy) external view returns (uint256) {
    return totalRewardPaid[_userAddy];
  }

  function getLastStakableBlock() public view returns (uint256) {
    uint256 _blockToAdd = pool.creationBlock == 0
      ? block.number
      : pool.creationBlock;
    return pool.origTotSupply.div(pool.perBlockNum).add(_blockToAdd);
  }

  function calcHarvestTot(address _userAddy) public view returns (uint256) {
    StakerInfo memory _staker = stakers[_userAddy];

    if (
      _staker.blockLastHarvested >= block.number ||
      _staker.blockOriginallyStaked == 0 ||
      pool.totalTokensStaked == 0
    ) {
      return uint256(0);
    }

    uint256 _accERC20PerShare = pool.accERC20PerShare;

    if (block.number > pool.lastRewardBlock && pool.totalTokensStaked != 0) {
      uint256 _endBlock = getLastStakableBlock();
      uint256 _lastBlock = block.number < _endBlock ? block.number : _endBlock;
      uint256 _nrOfBlocks = _lastBlock.sub(pool.lastRewardBlock);
      uint256 _erc20Reward = _nrOfBlocks.mul(pool.perBlockNum);
      _accERC20PerShare = _accERC20PerShare.add(
        _erc20Reward.mul(1e36).div(pool.totalTokensStaked)
      );
    }

    uint256 _harvestaccum = balanceOf(_userAddy).mul(_accERC20PerShare).div(1e36);

    if(_harvestaccum > _staker.rewardDebt)
      return _harvestaccum.sub(_staker.rewardDebt);
    else
      return 0;
  }

  // Update reward variables of the given pool to be up-to-date.
  function _updatePool() private {
    uint256 _endBlock = getLastStakableBlock();
    uint256 _lastBlock = block.number < _endBlock ? block.number : _endBlock;

    if (_lastBlock <= pool.lastRewardBlock) {
      return;
    }
    uint256 _stakedSupply = pool.totalTokensStaked;
    if (_stakedSupply == 0) {
      pool.lastRewardBlock = _lastBlock;
      return;
    }

    uint256 _nrOfBlocks = _lastBlock.sub(pool.lastRewardBlock);
    uint256 _erc20Reward = _nrOfBlocks.mul(pool.perBlockNum);

    pool.accERC20PerShare = pool.accERC20PerShare.add(
      _erc20Reward.mul(1e36).div(_stakedSupply)
    );
    pool.lastRewardBlock = _lastBlock;
  }

  function _harvestTokens(address _userAddy) private returns (uint256) {
    StakerInfo storage _staker = stakers[_userAddy];
    require(_staker.blockOriginallyStaked > 0, 'user must have tokens staked');

    uint256 _num2Trans = calcHarvestTot(_userAddy);
    if (_num2Trans > 0) {
      require(
        _rewardsToken.transfer(_userAddy, _num2Trans),
        'unable to send user their harvested tokens'
      );
      pool.curRewardsSupply = pool.curRewardsSupply.sub(_num2Trans);
    }
    _staker.rewardDebt = balanceOf(_userAddy).mul(pool.accERC20PerShare).div(
      1e36
    );
    _staker.blockLastHarvested = block.number;

    totalRewardPaid[_userAddy] = totalRewardPaid[_userAddy].add(_num2Trans);
    
    return _num2Trans;
  }

  // update the amount currently staked after a user harvests
  function _updNumStaked(uint256 _amount, string memory _operation) private {
    if (_compareStr(_operation, 'remove')) {
      pool.totalTokensStaked = pool.totalTokensStaked.sub(_amount);
    } else {
      pool.totalTokensStaked = pool.totalTokensStaked.add(_amount);
    }
  }

  function _compareStr(string memory a, string memory b)
    private
    pure
    returns (bool)
  {
    return (keccak256(abi.encodePacked((a))) ==
      keccak256(abi.encodePacked((b))));
  }
}