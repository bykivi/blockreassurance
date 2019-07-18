{*
* 2007-2019 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author    PrestaShop SA <contact@prestashop.com>
*  @copyright 2007-2019 PrestaShop SA
*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<div class="blockreas">
    {foreach from=$blocks item=$block key=$key}
        <div class="reass-item" style="{if $block['type_link'] !== $LINK_TYPE_NONE && !empty($block['link'])}cursor:pointer;{/if}"
                {if ($block['type_link'] !== $LINK_TYPE_NONE) && !empty($block['link'])} onclick="window.open('{$block['link']}')"{/if}>
            <div class="block-icon">
                {if $block['icon'] != 'undefined'}
                    {if $block['icon']}
                        <img class="svg" src="{$block['icon']}" style="display: none;">
                    {elseif $block['custom_icon']}
                        <img src="{$block['custom_icon']}">
                    {/if}
                {/if}
            </div>
            <div class="block-title" style="color:{$textColor}">{$block['title']}</div>
            <p style="color:{$textColor};">{$block['description']}</p>
        </div>
    {/foreach}
    <div class="clearfix"></div>
</div>
