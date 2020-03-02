Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2130A175FFF
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 17:35:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E00F1204B2;
	Mon,  2 Mar 2020 16:35:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kCi8IWbp2Pog; Mon,  2 Mar 2020 16:35:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AB699204BF;
	Mon,  2 Mar 2020 16:35:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C5C791BF321
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 16:35:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C287B875BB
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 16:35:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wWk8nbucKQA8 for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 16:35:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9A301877B1
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 16:35:01 +0000 (UTC)
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 -exists:%{i}.spf.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: RcljsEGFDwymXKue1l1ONRIyXL/1a67fcwKOZR80kh/8rsQS8h83hbxsbvOLdKfww+xzxvRsJa
 mDPOSR+fqHRBOa4CEzsLOBvy+yZbiWCGJ84ZFZHFPAbHGfqkKkmMdQy4H2EQ1wXohJRUKD5iod
 EhVW7xbTg8kQtKCOB9sZQtbQUR974XXzFnjmzvOWG7v1O0EeCijOFGg3DH66QamMz5oZ4Ng0Fw
 Hx3900WbP8nMOCsHRWhR2mnawGhdNEl6ePf76t5X2vF4sk0kjZ3O8iIs4Jomufg15iQHGucOsR
 meA=
X-IronPort-AV: E=Sophos;i="5.70,507,1574146800"; d="scan'208";a="67327284"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Mar 2020 09:34:45 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Mar 2020 09:34:42 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 2 Mar 2020 09:34:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uyf6iph1x44YX5GIGPYc3+ewT4HOJdILGvvPRvufdktF79qTRNvjcO+gEdSljB+AUpTQVmraVtv9QxTs5cTpa1FUQcbUNOOHfx9qAM4ccQN86IRWvxV4Wdq3u4UD78NZ71c3dffOakuJmHC59IRmBy/71tc8+HDQ21XZ5mMXdvvL0cvufhx06Fkjsgb3ZtiJRQPHbuPfaLMhGO1m720xQVaQLKFyHDxD1D5YP7pwYYaoEn9GD/WE1bZrrMiqBLVu5SLupLNmY/SoMbmw6yY9xWxemgXnQekcaxugMyuiwRBdKLsjx4vtQlS3sbUzDNvAglxoD5fmGkEW0xC7hZyAvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6VCCAjLlHZpgaDwGevFyCYBEocjz2NqxutWYXwKrJUw=;
 b=mQmBhugANBFKy8giIANAApiYrFbKCvG3ur8+DKmqM4Zn9Pg+gzjZgjkLnm7ogqW4uwtzVPQdvphZHD5ivFW2/AvkwVaezHCtmatd7HCEWFwVNQfCv/0GA3ywm+aijdX2Ym3VM+Gsu2fjD3wRKb2SWfDsrAc1faGJLgSfhK5PYkj+ZxWepO2NtUHVVMsj7bS3mMQJHP8NaCA7VKOIXdz2tHMcmISK24qFfmRGI+YUAYOoBhdScOOhV1Uk6K/a+zTfVxmhHitBw2HRiXAXkoTFCx4Ni6saHHYszVZSvnnL9KFkIb2qR8pEjrJjc6fhYujQlLptKxwSxLMm/6cMSSy/fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6VCCAjLlHZpgaDwGevFyCYBEocjz2NqxutWYXwKrJUw=;
 b=jo41fRu3R3wI29NDkho3ym+9/V1ml42FH5cFvLMJb/BEYuawdwd54Q/ozvIka5O9dhVMoDYHBqZCfP7RHecuG4Fiz/N7w/Tn36212Ldzo++gEFEr2kFpzgedA8h4RmFYNpU1fDdwgPYJ5C/xHzBiTOPSFoZMVfMYeLdYBOAlM5k=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (2603:10b6:405:7b::14)
 by BN6PR11MB4098.namprd11.prod.outlook.com (2603:10b6:405:7f::36)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.18; Mon, 2 Mar
 2020 16:34:40 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::ec62:e7fd:f17c:dfd4]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::ec62:e7fd:f17c:dfd4%3]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 16:34:40 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH v4 15/18] wilc1000: add fw.h
Thread-Topic: [PATCH v4 15/18] wilc1000: add fw.h
Thread-Index: AQHV8LB4/41FQC0oeUebJM9jBNAjAA==
Date: Mon, 2 Mar 2020 16:34:39 +0000
Message-ID: <20200302163414.4342-16-ajay.kathat@microchip.com>
References: <20200302163414.4342-1-ajay.kathat@microchip.com>
In-Reply-To: <20200302163414.4342-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5a312549-34e9-47d9-ceaa-08d7bec79abd
x-ms-traffictypediagnostic: BN6PR11MB4098:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB40989DA9D0B83720DFFD1261E3E70@BN6PR11MB4098.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:361;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(39860400002)(136003)(366004)(346002)(199004)(189003)(316002)(6916009)(86362001)(6512007)(2616005)(478600001)(71200400001)(54906003)(4326008)(64756008)(186003)(107886003)(66446008)(5660300002)(91956017)(76116006)(8676002)(66476007)(66946007)(6486002)(6506007)(66556008)(26005)(81156014)(81166006)(2906002)(1076003)(36756003)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB4098;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WU8uf5dwAVeRPVfEH1MmeklqSrvpiQR9wt/zLYDz888Q1a4zQf1hYbR04s9Jm81uwwlD99PtilS8kvBdjUOQCBmDTDzAA/BL4ekxQyqWx2BAceNxgxWiOQp3iYVScQVzX9sfaxToh19xbw5BJ2fXI6lO+uCLxaWRJ6NkrI+2TuwzxaiM1hRlM7uh37BHr+JakMHBkfkZ4OWAve/ei1sAVpffACcdovDSTERuXatpD+WBRFBBWQAyX0vCKcLcUC7KpwmjKbSxuXxZDH4jBMSphnFZDw99dQigRE56RuTxMKi+yZR+GqDX2lBDtDzc6yDGasjRdaelLC28qdwnaOh+649qKmZxoBCxe+CucBJqQvneGFyK8Y7aJa3TpUnC/k+v28fWkTgb7hG1rT9F3rBFwbfrc7DiRQVJRKcFvkL+Qnk4M0FO7ONGyMUT6gcNiUXd
x-ms-exchange-antispam-messagedata: PQydOK5B72UAxazxzD4RRqGqZwVXf/bL2dDDv0fME6V5zU6GrVKZJv592YD4x7EX/sbaCWN7toWwB+z9Yqw0/yk9MHc7vf0cKRs08XsbfH8DlytjYWs+dXKcoPYJnNiQBG35r/DXJK9Lctdeh92z2w==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a312549-34e9-47d9-ceaa-08d7bec79abd
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 16:34:39.8185 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HOmETdVpEOBBhE5TrP0FysI+gA+JmUZdOGpmCb5fFXLVsiO+NeEjkbOss1kWHSUD5GjW0yAHJ6wC++dsa0K+OOawJvn/IRaSEALTXEzX2Po=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB4098
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ajay.Kathat@microchip.com, Venkateswara.Kaja@microchip.com,
 gregkh@linuxfoundation.org, Nicolas.Ferre@microchip.com,
 Adham.Abozaeid@microchip.com, johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Ajay Singh <ajay.kathat@microchip.com>

Moved 'drivers/staging/wilc1000/fw.h' to
'drivers/net/wireless/microchip/wilc1000/fw.h'.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 drivers/net/wireless/microchip/wilc1000/fw.h | 119 +++++++++++++++++++
 1 file changed, 119 insertions(+)
 create mode 100644 drivers/net/wireless/microchip/wilc1000/fw.h

diff --git a/drivers/net/wireless/microchip/wilc1000/fw.h b/drivers/net/wireless/microchip/wilc1000/fw.h
new file mode 100644
index 000000000000..a76e1dea4345
--- /dev/null
+++ b/drivers/net/wireless/microchip/wilc1000/fw.h
@@ -0,0 +1,119 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2012 - 2018 Microchip Technology Inc., and its subsidiaries.
+ * All rights reserved.
+ */
+
+#ifndef WILC_FW_H
+#define WILC_FW_H
+
+#include <linux/ieee80211.h>
+
+#define WILC_MAX_NUM_STA			9
+#define WILC_MAX_RATES_SUPPORTED		12
+#define WILC_MAX_NUM_PMKIDS			16
+#define WILC_MAX_NUM_SCANNED_CH			14
+
+struct wilc_assoc_resp {
+	__le16 capab_info;
+	__le16 status_code;
+	__le16 aid;
+} __packed;
+
+struct wilc_pmkid {
+	u8 bssid[ETH_ALEN];
+	u8 pmkid[WLAN_PMKID_LEN];
+} __packed;
+
+struct wilc_pmkid_attr {
+	u8 numpmkid;
+	struct wilc_pmkid pmkidlist[WILC_MAX_NUM_PMKIDS];
+} __packed;
+
+struct wilc_reg_frame {
+	u8 reg;
+	u8 reg_id;
+	__le16 frame_type;
+} __packed;
+
+struct wilc_drv_handler {
+	__le32 handler;
+	u8 mode;
+} __packed;
+
+struct wilc_wep_key {
+	u8 index;
+	u8 key_len;
+	u8 key[0];
+} __packed;
+
+struct wilc_sta_wpa_ptk {
+	u8 mac_addr[ETH_ALEN];
+	u8 key_len;
+	u8 key[0];
+} __packed;
+
+struct wilc_ap_wpa_ptk {
+	u8 mac_addr[ETH_ALEN];
+	u8 index;
+	u8 key_len;
+	u8 key[0];
+} __packed;
+
+struct wilc_gtk_key {
+	u8 mac_addr[ETH_ALEN];
+	u8 rsc[8];
+	u8 index;
+	u8 key_len;
+	u8 key[0];
+} __packed;
+
+struct wilc_op_mode {
+	__le32 mode;
+} __packed;
+
+struct wilc_noa_opp_enable {
+	u8 ct_window;
+	u8 cnt;
+	__le32 duration;
+	__le32 interval;
+	__le32 start_time;
+} __packed;
+
+struct wilc_noa_opp_disable {
+	u8 cnt;
+	__le32 duration;
+	__le32 interval;
+	__le32 start_time;
+} __packed;
+
+struct wilc_join_bss_param {
+	char ssid[IEEE80211_MAX_SSID_LEN];
+	u8 ssid_terminator;
+	u8 bss_type;
+	u8 ch;
+	__le16 cap_info;
+	u8 sa[ETH_ALEN];
+	u8 bssid[ETH_ALEN];
+	__le16 beacon_period;
+	u8 dtim_period;
+	u8 supp_rates[WILC_MAX_RATES_SUPPORTED + 1];
+	u8 wmm_cap;
+	u8 uapsd_cap;
+	u8 ht_capable;
+	u8 rsn_found;
+	u8 rsn_grp_policy;
+	u8 mode_802_11i;
+	u8 p_suites[3];
+	u8 akm_suites[3];
+	u8 rsn_cap[2];
+	u8 noa_enabled;
+	__le32 tsf_lo;
+	u8 idx;
+	u8 opp_enabled;
+	union {
+		struct wilc_noa_opp_disable opp_dis;
+		struct wilc_noa_opp_enable opp_en;
+	};
+} __packed;
+#endif
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
