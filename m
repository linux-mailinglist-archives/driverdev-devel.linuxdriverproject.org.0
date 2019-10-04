Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 130CDCB93D
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Oct 2019 13:35:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9A09587CD4;
	Fri,  4 Oct 2019 11:35:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fpmlsGRlQtV1; Fri,  4 Oct 2019 11:35:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A520987C0D;
	Fri,  4 Oct 2019 11:35:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 40FA91BF3F7
 for <devel@linuxdriverproject.org>; Fri,  4 Oct 2019 11:35:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3D9F887C0E
 for <devel@linuxdriverproject.org>; Fri,  4 Oct 2019 11:35:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4BfB8LnZFbnK for <devel@linuxdriverproject.org>;
 Fri,  4 Oct 2019 11:35:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E32DD87C0D
 for <devel@driverdev.osuosl.org>; Fri,  4 Oct 2019 11:35:35 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 04:35:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,256,1566889200"; d="scan'208";a="204274143"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 04 Oct 2019 04:35:33 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iGLrx-0006n1-9H; Fri, 04 Oct 2019 19:35:33 +0800
Date: Fri, 4 Oct 2019 19:35:09 +0800
From: kbuild test robot <lkp@intel.com>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>
Subject: [staging:staging-testing 59/59] drivers/staging/wfx/sta.c:244:1-7:
 alloc with no test, possible model on line 260
Message-ID: <201910041922.GyiJLPyg%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kbuild-all@01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
head:   40115bbc40e2fd2de0e01ef2a28e0d09a1b5d0d1
commit: 40115bbc40e2fd2de0e01ef2a28e0d09a1b5d0d1 [59/59] staging: wfx: implement the rest of mac80211 API

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


coccinelle warnings: (new ones prefixed by >>)

>> drivers/staging/wfx/sta.c:244:1-7: alloc with no test, possible model on line 260

vim +244 drivers/staging/wfx/sta.c

   212	
   213	void wfx_update_filtering(struct wfx_vif *wvif)
   214	{
   215		int ret;
   216		bool is_sta = wvif->vif && NL80211_IFTYPE_STATION == wvif->vif->type;
   217		bool filter_bssid = wvif->filter_bssid;
   218		bool fwd_probe_req = wvif->fwd_probe_req;
   219		struct hif_mib_bcn_filter_enable bf_ctrl;
   220		struct hif_mib_bcn_filter_table *bf_tbl;
   221		struct hif_ie_table_entry ie_tbl[] = {
   222			{
   223				.ie_id        = WLAN_EID_VENDOR_SPECIFIC,
   224				.has_changed  = 1,
   225				.no_longer    = 1,
   226				.has_appeared = 1,
   227				.oui         = { 0x50, 0x6F, 0x9A},
   228			}, {
   229				.ie_id        = WLAN_EID_HT_OPERATION,
   230				.has_changed  = 1,
   231				.no_longer    = 1,
   232				.has_appeared = 1,
   233			}, {
   234				.ie_id        = WLAN_EID_ERP_INFO,
   235				.has_changed  = 1,
   236				.no_longer    = 1,
   237				.has_appeared = 1,
   238			}
   239		};
   240	
   241		if (wvif->state == WFX_STATE_PASSIVE)
   242			return;
   243	
 > 244		bf_tbl = kmalloc(sizeof(struct hif_mib_bcn_filter_table) + sizeof(ie_tbl), GFP_KERNEL);
   245		memcpy(bf_tbl->ie_table, ie_tbl, sizeof(ie_tbl));
   246		if (wvif->disable_beacon_filter) {
   247			bf_ctrl.enable = 0;
   248			bf_ctrl.bcn_count = 1;
   249			bf_tbl->num_of_info_elmts = 0;
   250		} else if (!is_sta) {
   251			bf_ctrl.enable = HIF_BEACON_FILTER_ENABLE | HIF_BEACON_FILTER_AUTO_ERP;
   252			bf_ctrl.bcn_count = 0;
   253			bf_tbl->num_of_info_elmts = 2;
   254		} else {
   255			bf_ctrl.enable = HIF_BEACON_FILTER_ENABLE;
   256			bf_ctrl.bcn_count = 0;
   257			bf_tbl->num_of_info_elmts = 3;
   258		}
   259	
 > 260		ret = hif_set_rx_filter(wvif, filter_bssid, fwd_probe_req);
   261		if (!ret)
   262			ret = hif_set_beacon_filter_table(wvif, bf_tbl);
   263		if (!ret)
   264			ret = hif_beacon_filter_control(wvif, bf_ctrl.enable, bf_ctrl.bcn_count);
   265		if (!ret)
   266			ret = wfx_set_mcast_filter(wvif, &wvif->mcast_filter);
   267		if (ret)
   268			dev_err(wvif->wdev->dev, "update filtering failed: %d\n", ret);
   269		kfree(bf_tbl);
   270	}
   271	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
