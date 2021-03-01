Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE4E327F69
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 14:26:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ACCA443074;
	Mon,  1 Mar 2021 13:26:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mUMgctDr-6CO; Mon,  1 Mar 2021 13:26:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 258B94306C;
	Mon,  1 Mar 2021 13:26:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E4A4C1BF372
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 13:25:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E14754307F
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 13:25:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HAlPns55uIPY for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 13:25:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A8E8C43083
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 13:25:50 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 121DPARF002901;
 Mon, 1 Mar 2021 13:25:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=q7/DxS6XCuyFssRYAyHrDYOSIKYzpgT+V4jSY+ttJhQ=;
 b=kw73IITWzXVvJjM3fOmhrQSYn8R84OzYQVjKFNETHEz/MOmXgUXp3QmEq4ZMK04nByFO
 2XEvAxM6U+J8JouPN4sFs7E1Vg20DKVMTS05GzZKv8vMicS/gCBU732DKHFxYzNlFljM
 LbGiw3iS7i+ietutSuK4mN2PzbmjkBUsxPx7Ucb9yYczP2/qLyvNzbHbBRTr6peNxHfC
 pUZCinIUPGSIkVb9Jo2WOjhqDx1C/XM8IcBoTvgbqghYYFnuhDJwHMJDjU9gMNo7apMw
 FI1cZTTW/5K7PpN6UE/s7lm/UQtF/BIGkxLvVCTlAaFHV4EUzsQIzlYNwhKWv5JM0OpK 4g== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2130.oracle.com with ESMTP id 36ybkb3w90-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 01 Mar 2021 13:25:48 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 121DKSSS134798;
 Mon, 1 Mar 2021 13:25:46 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 36yyuqh9t9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 01 Mar 2021 13:25:46 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 121DPjwu021006;
 Mon, 1 Mar 2021 13:25:45 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 01 Mar 2021 05:25:44 -0800
Date: Mon, 1 Mar 2021 16:25:35 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Lee Gibson <leegib@gmail.com>
Subject: Re: [PATCH] staging: rtl8192e: Fix possible buffer overflow in
 _rtl92e_wx_set_scan
Message-ID: <20210301132535.GR2087@kadam>
References: <20210226114829.316980-1-leegib@gmail.com>
 <20210226134333.GA2087@kadam> <20210226140526.GG2222@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210226140526.GG2222@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9909
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 spamscore=0 suspectscore=0
 mlxlogscore=999 bulkscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103010110
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9909
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 impostorscore=0
 suspectscore=0 phishscore=0 bulkscore=0 mlxscore=0 lowpriorityscore=0
 clxscore=1015 mlxlogscore=999 adultscore=0 malwarescore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2103010111
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


On Fri, Feb 26, 2021 at 05:05:26PM +0300, Dan Carpenter wrote:
> Here is a v2 of my check.  I've changed it to mark all "->ssid" and
> everything in "(struct ieee80211_network)" as protected.  I'm just
> playing around with it at this point to explore what works best.  It's
> impossible to know until after some results come back.
> 

[ Added linux-wireless to the CC list.  Here was the original check I
  wrote on Friday. https://lore.kernel.org/lkml/20210226140526.GG2222@kadam/ ]

This check worked out pretty well.  It's probably 50% bugs?  Unfiltered
results below.  The trick of warning for "if (ststr(member, "->ssid")) "
and the memcpy length couldn't be verified turned out to be the best.

Protecting ieee80211_network didn't find anything.

Sometimes we're copying from an existing (presumably verified) config
to another config so the ->ssid_len is valid.  An example of that is:

drivers/staging/rtl8192e/rtllib_softmac.c:1685 rtllib_softmac_new_net() protected struct member '(struct rtllib_network)->ssid' overflow: rl='0-255'

drivers/staging/rtl8192e/rtllib_softmac.c
  1674                          /* Save the essid so that if it is hidden, it is
  1675                           * replaced with the essid provided by the user.
  1676                           */
  1677                          if (!ssidbroad) {
  1678                                  memcpy(tmp_ssid, ieee->current_network.ssid,
  1679                                         ieee->current_network.ssid_len);
  1680                                  tmp_ssid_len = ieee->current_network.ssid_len;
                                        ^^^^^^^^^^^^
We can assume the existing ssid_len is valid

  1681                          }
  1682                          memcpy(&ieee->current_network, net,
  1683                                  sizeof(ieee->current_network));
  1684                          if (!ssidbroad) {
  1685                                  memcpy(ieee->current_network.ssid, tmp_ssid,
  1686                                         tmp_ssid_len);
                                               ^^^^^^^^^^^^
so this memcpy() won't overflow.  It's easy enough for a human reviewer
to make this sort of assumption, but Smatch can't.

  1687                                  ieee->current_network.ssid_len = tmp_ssid_len;
  1688                          }

All the code outside of drivers/ seems correct.  They're mostly similar
examples of copying the ssid from one valid existing config to another.
The other places are using nla attrs like this:

net/wireless/nl80211.c
 14399          if (info->attrs[NL80211_ATTR_SSID]) {
 14400                  params.ssid.ssid_len = nla_len(info->attrs[NL80211_ATTR_SSID]);
 14401                  if (params.ssid.ssid_len == 0)
 14402                          return -EINVAL;
 14403                  memcpy(params.ssid.ssid,
 14404                         nla_data(info->attrs[NL80211_ATTR_SSID]),
 14405                         params.ssid.ssid_len);
 14406          }


Smatch doesn't parse nla attributes correctly.  They're capped using
the nl80211_policy[] array:

net/wireless/nl80211.c
   528          [NL80211_ATTR_SSID] = { .type = NLA_BINARY,
   529                                  .len = IEEE80211_MAX_SSID_LEN },

But there are quite a few real bugs as well.  If anyone wants to fix any
of these just claim a bug, and I won't send a patch for that warning.
:)  Lee, I think you mentioned that you had found a related buffer
overflow fix?  Did the check find it?

regards,
dan carpenter

drivers/staging/rtl8192u/r8192U_wx.c:335 r8192_wx_set_scan() protected struct member '(struct ieee80211_network)->ssid' overflow: rl='1-255'
drivers/staging/rtl8192e/rtllib_softmac.c:1685 rtllib_softmac_new_net() protected struct member '(struct rtllib_network)->ssid' overflow: rl='0-255'
drivers/staging/rtl8192e/rtl8192e/rtl_wx.c:412 _rtl92e_wx_set_scan() protected struct member '(struct rtllib_network)->ssid' overflow: rl='1-255'
drivers/staging/rtl8188eu/core/rtw_ap.c:795 rtw_check_beacon_data() protected struct member '(struct ndis_802_11_ssid)->ssid' overflow: rl='1-255'
drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:1138 rtw_wx_set_scan() protected struct member '(struct ndis_802_11_ssid)->ssid' overflow: rl='1-127'
drivers/net/wireless/ath/wcn36xx/smd.c:1571 wcn36xx_smd_set_bss_params() protected struct member '(struct wcn36xx_hal_mac_ssid)->ssid' overflow: rl='0-255'
drivers/net/wireless/ath/ath11k/wmi.c:2148 ath11k_wmi_send_scan_start_cmd() protected struct member '(struct wmi_ssid)->ssid' overflow: rl='0-255'
drivers/net/wireless/ath/wil6210/cfg80211.c:2100 wil_cfg80211_change_beacon() protected struct member '(struct wil6210_vif)->ssid' overflow: rl='0-255'
drivers/net/wireless/ath/ath10k/wow.c:198 ath10k_wmi_pno_check() protected struct member '(struct wmi_ssid)->ssid' overflow: rl='0-255'
drivers/net/wireless/ath/ath10k/wmi-tlv.c:2029 ath10k_wmi_tlv_op_gen_start_scan() protected struct member '(struct wmi_ssid)->ssid' overflow: rl='0-255'
drivers/net/wireless/ath/ath10k/wmi-tlv.c:3929 ath10k_wmi_tlv_op_gen_config_pno_start() protected struct member '(struct wmi_ssid)->ssid' overflow: rl='0-u32max'
drivers/net/wireless/ath/ath6kl/wmi.c:1884 ath6kl_wmi_connect_cmd() protected struct member '(struct wmi_connect_cmd)->ssid' overflow: rl='s32min-(-1),1-s32max'
drivers/net/wireless/ath/ath6kl/cfg80211.c:932 ath6kl_set_probed_ssids() protected struct member '(struct cfg80211_ssid)->ssid' overflow: rl='0-255'
drivers/net/wireless/ath/ath6kl/cfg80211.c:971 ath6kl_set_probed_ssids() protected struct member '(struct cfg80211_ssid)->ssid' overflow: rl='0-255'
drivers/net/wireless/ath/ath6kl/cfg80211.c:1631 ath6kl_cfg80211_join_ibss() protected struct member '(struct ath6kl_vif)->ssid' overflow: rl='0-255'
drivers/net/wireless/ath/ath6kl/cfg80211.c:2809 ath6kl_start_ap() protected struct member '(struct ath6kl_vif)->ssid' overflow: rl='0-65531'
drivers/net/wireless/ath/ath6kl/cfg80211.c:2892 ath6kl_start_ap() protected struct member '(struct wmi_connect_cmd)->ssid' overflow: rl='0-65531'
drivers/net/wireless/st/cw1200/sta.c:1293 cw1200_do_join() protected struct member '(struct wsm_join)->ssid' overflow: rl='0-255'
drivers/net/wireless/st/cw1200/sta.c:2334 cw1200_start_ap() protected struct member '(struct wsm_start)->ssid' overflow: rl='0-255'
drivers/net/wireless/quantenna/qtnfmac/event.c:573 qtnf_event_handle_external_auth() protected struct member '(struct cfg80211_ssid)->ssid' overflow: rl='1-255'
drivers/net/wireless/marvell/mwifiex/uap_cmd.c:506 mwifiex_uap_bss_param_prepare() protected struct member '(struct host_cmd_tlv_ssid)->ssid' overflow: rl='1-u32max'
drivers/net/wireless/marvell/mwifiex/join.c:428 mwifiex_cmd_802_11_associate() protected struct member '(struct mwifiex_ie_types_ssid_param_set)->ssid' overflow: rl='0-u16max'
drivers/net/wireless/marvell/mwifiex/scan.c:933 mwifiex_config_scan() protected struct member '(struct mwifiex_ie_types_wildcard_ssid_params)->ssid' overflow: rl='0-255'
drivers/net/wireless/marvell/mwifiex/scan.c:2383 mwifiex_cmd_802_11_bg_scan_config() protected struct member '(struct mwifiex_ie_types_wildcard_ssid_params)->ssid' overflow: rl='0-255'
drivers/net/wireless/marvell/mwifiex/cfg80211.c:1999 mwifiex_cfg80211_start_ap() protected struct member '(struct mwifiex_802_11_ssid)->ssid' overflow: rl='1-65531'
drivers/net/wireless/marvell/libertas/cfg.c:176 lbs_add_ssid_tlv() protected struct member '(struct mrvl_ie_ssid_param_set)->ssid' overflow: rl='s32min-s32max'
drivers/net/wireless/marvell/libertas/cfg.c:1767 lbs_ibss_join_existing() protected struct member '(struct adhoc_bssdesc)->ssid' overflow: rl='0-255'
drivers/net/wireless/marvell/libertas/cfg.c:1878 lbs_ibss_start_new() protected struct member '(struct cmd_ds_802_11_ad_hoc_start)->ssid' overflow: rl='0-255'
drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c:3708 brcmf_wowl_nd_results() protected struct member '(struct cfg80211_ssid)->ssid' overflow: rl='0-255'
drivers/net/wireless/intel/iwlwifi/mvm/d3.c:1932 iwl_mvm_query_netdetect_reasons() protected struct member '(struct cfg80211_ssid)->ssid' overflow: rl='0-255'
drivers/net/wireless/intel/iwlwifi/mvm/scan.c:486 iwl_scan_build_ssids() protected struct member '(struct iwl_ssid_ie)->ssid' overflow: rl='1-255'
drivers/net/wireless/intel/iwlwifi/mvm/scan.c:500 iwl_scan_build_ssids() protected struct member '(struct iwl_ssid_ie)->ssid' overflow: rl='0-255'
drivers/net/wireless/intel/iwlwifi/dvm/scan.c:721 iwlagn_request_scan() protected struct member '(struct iwl_ssid_ie)->ssid' overflow: rl='0-255'
drivers/net/wireless/intel/ipw2x00/ipw2200.c:5870 ipw_adhoc_create() protected struct member '(struct libipw_network)->ssid' overflow: rl='0-255'
drivers/net/wireless/intel/iwlegacy/3945-mac.c:2573 il3945_request_scan() protected struct member '(struct il_ssid_ie)->ssid' overflow: rl='1-255'
drivers/net/wireless/intel/iwlegacy/4965-mac.c:919 il4965_request_scan() protected struct member '(struct il_ssid_ie)->ssid' overflow: rl='1-255'
drivers/net/wireless/ti/wlcore/scan.c:351 wlcore_scan() protected struct member '(struct wl1271_scan)->ssid' overflow: rl='1-255'
drivers/net/wireless/ti/wlcore/scan.c:410 wlcore_scan_sched_scan_ssid_list() protected struct member '(struct wl1271_ssid)->ssid' overflow: rl='0-255'
drivers/net/wireless/ti/wlcore/scan.c:425 wlcore_scan_sched_scan_ssid_list() protected struct member '(struct wl1271_ssid)->ssid' overflow: rl='1-255'
drivers/net/wireless/ti/wl18xx/scan.c:94 wl18xx_scan_send() protected struct member '(struct wl18xx_cmd_scan_params)->ssid' overflow: rl='0-255'
drivers/net/wireless/ti/wl1251/cmd.c:459 wl1251_cmd_scan() protected struct member '(struct wl1251_scan_parameters)->ssid' overflow: rl='0-255'
drivers/net/wireless/mediatek/mt76/mt76_connac_mcu.c:1338 mt76_connac_mcu_hw_scan() protected struct member '(struct mt76_connac_mcu_scan_ssid)->ssid' overflow: rl='1-255'
drivers/net/wireless/mediatek/mt76/mt76_connac_mcu.c:1445 mt76_connac_mcu_sched_scan_req() protected struct member '(struct mt76_connac_mcu_scan_ssid)->ssid' overflow: rl='0-255'
drivers/net/wireless/mediatek/mt76/mt76_connac_mcu.c:1452 mt76_connac_mcu_sched_scan_req() protected struct member '(struct mt76_connac_mcu_scan_match)->ssid' overflow: rl='0-255'
net/wireless/nl80211.c:3890 nl80211_set_interface() protected struct member '(struct wireless_dev)->ssid' overflow: rl='0-255'
net/wireless/nl80211.c:4001 nl80211_new_interface() protected struct member '(struct wireless_dev)->ssid' overflow: rl='0-255'
net/wireless/nl80211.c:5503 nl80211_start_ap() protected struct member '(struct wireless_dev)->ssid' overflow: rl='0-255'
net/wireless/nl80211.c:8382 nl80211_trigger_scan() protected struct member '(struct cfg80211_ssid)->ssid' overflow: rl='0-65527'
net/wireless/nl80211.c:8836 nl80211_parse_sched_scan() protected struct member '(struct cfg80211_ssid)->ssid' overflow: rl='0-65527'
net/wireless/nl80211.c:8874 nl80211_parse_sched_scan() protected struct member '(struct cfg80211_ssid)->ssid' overflow: rl='0-65531'
net/wireless/nl80211.c:14403 nl80211_external_auth() protected struct member '(struct cfg80211_ssid)->ssid' overflow: rl='1-255'
net/wireless/ibss.c:151 __cfg80211_join_ibss() protected struct member '(struct wireless_dev)->ssid' overflow: rl='0-255'
net/wireless/ibss.c:424 cfg80211_ibss_wext_siwessid() protected struct member '(struct wireless_dev)->ssid' overflow: rl='0-u16max'
net/wireless/mesh.c:212 __cfg80211_join_mesh() protected struct member '(struct wireless_dev)->ssid' overflow: rl='1-255'
net/mac80211/ibss.c:330 __ieee80211_sta_join_ibss() protected struct member '(struct ieee80211_bss_conf)->ssid' overflow: rl='0-255'
net/mac80211/ibss.c:1833 ieee80211_ibss_join() protected struct member '(struct ieee80211_if_ibss)->ssid' overflow: rl='0-255'
net/mac80211/cfg.c:1132 ieee80211_start_ap() protected struct member '(struct ieee80211_bss_conf)->ssid' overflow: rl='1-65531'

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
