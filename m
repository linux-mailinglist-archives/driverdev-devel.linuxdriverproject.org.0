Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CE81817B7
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 13:19:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EA09F84E23;
	Wed, 11 Mar 2020 12:19:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2e1wCpEkWYL4; Wed, 11 Mar 2020 12:19:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6941F847F8;
	Wed, 11 Mar 2020 12:19:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 65BCD1BF599
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 12:19:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5B81284828
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 12:19:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k4RFx7du8xHR for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 12:19:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E0CFC84D56
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 12:18:57 +0000 (UTC)
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
IronPort-SDR: jfXpLRe9sPLG0YAhrUezSLfOiK9PY11f8xNQlLmtVlJ/Pa+xxbPteaxGqyhJvRdRfTZLOh8Kd2
 Np8Oqwp2v7P04gCeBqJEPltpZ/NtFW4dwt/0H9dmGW8HzXA0x1UWIcX2M21xXehIULlEQXmelZ
 JeTFBR37+9GjmkCAUUn79I4f7gkwIGsRQ6TsBZSJq1t8ro4W1vgzo+xy5kVY2652ANZ+wiIzK2
 rD6ZvqasPpMI5Yi1OXAXGdzHJIMRojiaRIo+fsps39YetG0cJ7yQu5lhXxkkkiormDVbljB4jM
 qd8=
X-IronPort-AV: E=Sophos;i="5.70,540,1574146800"; d="scan'208";a="68440744"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Mar 2020 05:18:58 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Mar 2020 05:18:57 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 11 Mar 2020 05:18:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cEa3UYiDzkPFgtfkKXesufri9WL+GWmT4kIi172vLWWZ9CAlKDMALfPQtuX++D7qCycThMnTTzLvPPPu1oAzk6ZkWWxcU0wcYAd1l+ZURmFZO6oJ1buXM8WW+kHxTJtC89Emt0nevoh933jzAg7o2+6uVPnbE2pOsL+8shYkKJjAD8gAYn0SF37LdFwc7G7rjMjo1DT5CXl/QiWGeF50ynn3DWuD57h51vCG/1VTOWluH+8bw2AWe0eqURtkKQBhVaEOr7jx+Nprza6ZT3eFU9hRjpObTSekE1g5moH5Bab6b5ikOy4jdj9ijUGQaa8L9jZDi3g76IfFRQaADGRYvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FbxCkj5abFNCucs2nUZKiRYshSZA04f88nBzX9uxbqE=;
 b=Y1MJuWkFpj2VIlzNYC4Cxg0XEMF7LiyJs57IoKOTa2FOeu0zVd6CH6R0d/NzlLV8iYC8KIjyXIEl9sVjhaK9cu6D81vxMQ2riVtXqDZSUM5eX8BrHOWRj/dbR29f7X2hQKL8aLJIck4eBCD44zP6+dWKJdhDL0GsP+lUmrHg0uBgk9LNrbIDab4JZ0HhG6HvVhcm3SZKgZf9mObaY3V41yarx/hD3GN1a8p5xATv9zjgTVEG+dIkxrV7eelL5cEG0v/CJNm8WTIZm9GHOeQHPupEvSnD+gJ4oWe0YRedlZYiWKwd7OZjNed4sS1ULgESzK94ixRZEOCIEvmiope2gA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FbxCkj5abFNCucs2nUZKiRYshSZA04f88nBzX9uxbqE=;
 b=iwSKEVwA1v8RogCqjG1nu7/1aIwpBkmri+U9X+Hw8UywASd0UT/5NNQmueAW0HdxpXFRU4svbeQjE82wmtiuIifc7H/zDZZjpImypmfLeEm/MH3oI9Mh/CiLgV4qOW9+TuVs0O0bj59u1mFUNDDSaczKA/E4bAhLmJnwtwlxetM=
Received: from BYAPR11MB3125.namprd11.prod.outlook.com (2603:10b6:a03:8e::32)
 by BYAPR11MB2805.namprd11.prod.outlook.com (2603:10b6:a02:c1::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.14; Wed, 11 Mar
 2020 12:18:55 +0000
Received: from BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::c27:87cf:ca4:d86e]) by BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::c27:87cf:ca4:d86e%4]) with mapi id 15.20.2793.013; Wed, 11 Mar 2020
 12:18:55 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH v5 07/17] wilc1000: add cfg80211.h
Thread-Topic: [PATCH v5 07/17] wilc1000: add cfg80211.h
Thread-Index: AQHV9581BPGoCFA+KEq6jSTBypVd4w==
Date: Wed, 11 Mar 2020 12:18:45 +0000
Message-ID: <20200311121809.5610-8-ajay.kathat@microchip.com>
References: <20200311121809.5610-1-ajay.kathat@microchip.com>
In-Reply-To: <20200311121809.5610-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1d58b112-6cbc-4428-506b-08d7c5b65e48
x-ms-traffictypediagnostic: BYAPR11MB2805:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB2805AF5205755F11D7227E7AE3FC0@BYAPR11MB2805.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:418;
x-forefront-prvs: 0339F89554
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(136003)(346002)(396003)(366004)(199004)(478600001)(2906002)(71200400001)(8936002)(81166006)(81156014)(6666004)(316002)(5660300002)(54906003)(6506007)(1076003)(8676002)(6512007)(86362001)(36756003)(107886003)(4326008)(6486002)(76116006)(91956017)(66476007)(64756008)(66446008)(66946007)(66556008)(6916009)(2616005)(186003)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB2805;
 H:BYAPR11MB3125.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rxgl/rN/QWS8YNcSc9ly4E1BlRIpdSvQzZf9jYHZUQ7+MplzL4B2/0iF3q+hvylWVbLb6JtEmHLSFPfSPMRi3+HBYC/40UYgjtjMhGh/YslP7v9gxR3oPyYhUuCuA4QE9kS8q1LpjJ+Io1cf9t6+IoeBwxItNpQjFkwltiU/wTQxxysxNVqBEgvy/bz0i62DZvZZi0LbrUrutALcoCtOLQhXeAVxkhjw3996uBr2K6t7e2yeGA4zHYiuRARY8vZavaIVUBhDhVTKSdQgTcvVaMy9I/Z9cqlZMEpTMERasF5+SJ0SjBLDveaVh5u4lZNB9FX8L9s3cyPI4Hrs1pFqRB+HWdxFHInlx2NUTsr0MwYm8wMlndIQTQ0b4WQatd+A64E2ZktyUhD2GeJD5Sh4QqACfENX90gL2/483lAg+fW9iFuqSSD/Zndcz9vwwZZb
x-ms-exchange-antispam-messagedata: bHicpnWrRtsstY9CWZXhmXJ2LF1+ycwceA2Dfy6oHddC4IWG5V6c72SY1wgexAlfTZyn0IjGnmitENjLD45kFRNC4mDE/V9rEQrY3T8SmGDXEEzl4maJ1NFy8jG1SxoYCkph8gBpreeA7NpZJJ/rNg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d58b112-6cbc-4428-506b-08d7c5b65e48
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2020 12:18:45.1729 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JsRuIDW9AGYNcInhd531KSxvhRfDvi8/zlkWjNU6LDXsJEigyGvlYyNjA9bDFKEnhEQs/woRt1NejmYA9E1624xCIDcVevm1ck3vwB0+pQU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2805
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

Moved 'drivers/staging/wilc1000/cfg80211.h' to
'drivers/net/wireless/microchip/wilc1000/cfg80211.h'.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 .../wireless/microchip/wilc1000/cfg80211.h    | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)
 create mode 100644 drivers/net/wireless/microchip/wilc1000/cfg80211.h

diff --git a/drivers/net/wireless/microchip/wilc1000/cfg80211.h b/drivers/net/wireless/microchip/wilc1000/cfg80211.h
new file mode 100644
index 000000000000..5e5d63f70df2
--- /dev/null
+++ b/drivers/net/wireless/microchip/wilc1000/cfg80211.h
@@ -0,0 +1,29 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2012 - 2018 Microchip Technology Inc., and its subsidiaries.
+ * All rights reserved.
+ */
+
+#ifndef WILC_CFG80211_H
+#define WILC_CFG80211_H
+#include "netdev.h"
+
+struct wiphy *wilc_cfg_alloc(void);
+int wilc_cfg80211_init(struct wilc **wilc, struct device *dev, int io_type,
+		       const struct wilc_hif_func *ops);
+struct wilc *wilc_create_wiphy(struct device *dev);
+void wilc_deinit_host_int(struct net_device *net);
+int wilc_init_host_int(struct net_device *net);
+void wilc_wfi_monitor_rx(struct net_device *mon_dev, u8 *buff, u32 size);
+struct wilc_vif *wilc_netdev_interface(struct wilc *wl, const char *name,
+				       enum nl80211_iftype type);
+void wilc_wfi_deinit_mon_interface(struct wilc *wl, bool rtnl_locked);
+struct net_device *wilc_wfi_init_mon_interface(struct wilc *wl,
+					       const char *name,
+					       struct net_device *real_dev);
+void wilc_mgmt_frame_register(struct wiphy *wiphy, struct wireless_dev *wdev,
+			      u16 frame_type, bool reg);
+struct wilc_vif *wilc_get_interface(struct wilc *wl);
+struct wilc_vif *wilc_get_wl_to_vif(struct wilc *wl);
+void wlan_deinit_locks(struct wilc *wilc);
+#endif
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
