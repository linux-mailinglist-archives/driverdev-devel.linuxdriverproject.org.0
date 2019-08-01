Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A42BD7E3CC
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Aug 2019 22:15:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2E5EB22829;
	Thu,  1 Aug 2019 20:15:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R8imzEsNi7mo; Thu,  1 Aug 2019 20:15:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0719B22660;
	Thu,  1 Aug 2019 20:15:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C52461BF3D6
 for <devel@linuxdriverproject.org>; Thu,  1 Aug 2019 20:15:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C1FE084B37
 for <devel@linuxdriverproject.org>; Thu,  1 Aug 2019 20:15:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0Xw7Giws4G9h for <devel@linuxdriverproject.org>;
 Thu,  1 Aug 2019 20:15:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2F50384A43
 for <devel@driverdev.osuosl.org>; Thu,  1 Aug 2019 20:15:16 +0000 (UTC)
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Adham.Abozaeid@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Adham.Abozaeid@microchip.com";
 x-sender="Adham.Abozaeid@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Adham.Abozaeid@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Adham.Abozaeid@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Mf6LQJWTHAz9p60vejVZltuTorXAP3KjrcOr/Z/zn5XlOrJd43kSntns4uMeC472xMdAH2n0YH
 lM6vdnqp2ZsN0hf1+z51svGpdaoeEkev2DLvXhrObH+BbAPXUqJJcQOunAlEJhp75mogWeEJqy
 AyvH6uJ9KTfR1Jp8Jm1+lzdqjQyfAHo//kOlXv0clEm0W+3WPk9EoDamYy9UAxzB2nmQajvwHx
 /GOdYk6CdvUvCgWmGPGR6M/mC4OFYVolTaqrYrTqYMDUrsyx8ViZLEASYJmZql9O38NXXGKh6a
 JpY=
X-IronPort-AV: E=Sophos;i="5.64,335,1559545200"; d="scan'208";a="40664146"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Aug 2019 13:15:15 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 1 Aug 2019 13:15:15 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 1 Aug 2019 13:15:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DCx69lXAZjiHRk3yHPja6rq/Vt5Ow5gUW0C4pNcGM8g9C+XJUKxLvMXkmXWg6Wgd2B/+jYsnrHtIxz9NKW7N+4T4vJ+BAjFEu91TE1TUCPFaAYlvZXbIi8mSSf1tssyswvleFrVH4fqTXdSQ78LIh2ienMuW/7fVI2LLfgmNWmW41Q7+xaPvF4uGFfct8inR4sTNc5Oeya4A8/hpTKi739aZ2k6rh5Nyo+ZqEoC/LWekk7kkHpho90yIdp2BX8nIqcv9gac8Ku42bD6ervVJlHfIgyodjjDJliEqF99x4gNbhsMoRaGYAjqp/jREf8BKRweEAiOmD1XovN1aLrop5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rNjBUE6Qz6PK1SpkJ13U8N00ELdik1gK8eEwpZtC9fM=;
 b=GseFpTPt9WnHdPcChX2bzRB8/vNTAmiaWsVUQf3LSAGQL3AcDYmNF700TFjY1vdnDVFedHaFQuzqbE8MM+R4g4IGypBV8UXlIx+atjKdLc/ut6SlDBnes+kvL67PzGs300J+KwKzf25acF2sYOtKhGo0NbsU49R3SQaXaig20uNf7tUl8/AIMP16MaBKUWocvNqGajMrctTjXteAEC/BUzG8SYfhgnS4cSXil2+on0maP9fhn7mav8phyYfwl9xylMSfO33aolRf4cZrQzwPs4vmmZfoniDiOSe6TXSWDPCTGjFWXH6G0yqVKhuuZj0IBknZetN1qg51dXULYCTa3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rNjBUE6Qz6PK1SpkJ13U8N00ELdik1gK8eEwpZtC9fM=;
 b=FQuIAQuutr6pqQeU9zjxnIr0GwhD/XmYhuupdRqCFeSbhVQjXXKv3XO+rYw9N1qN4Xt5uxnf33ozQwD0eacj9LZobWxdXvEyuDawBYki0jbsLyzEL0/8/FJu7TJYzbuGsaTOstY5/ZGxjEX2JbZC0zVbFXwCcRCj3on8eTX4Pgc=
Received: from MWHPR11MB1373.namprd11.prod.outlook.com (10.169.234.141) by
 MWHPR11MB1486.namprd11.prod.outlook.com (10.172.55.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.14; Thu, 1 Aug 2019 20:15:12 +0000
Received: from MWHPR11MB1373.namprd11.prod.outlook.com
 ([fe80::480d:becc:c567:3336]) by MWHPR11MB1373.namprd11.prod.outlook.com
 ([fe80::480d:becc:c567:3336%2]) with mapi id 15.20.2136.010; Thu, 1 Aug 2019
 20:15:12 +0000
From: <Adham.Abozaeid@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH v2 2/2] staging: wilc1000: remove unused function
Thread-Topic: [PATCH v2 2/2] staging: wilc1000: remove unused function
Thread-Index: AQHVSKXTw7CVVrfMgkexEU0dCNJLVQ==
Date: Thu, 1 Aug 2019 20:15:12 +0000
Message-ID: <20190801200909.12605-3-adham.abozaeid@microchip.com>
References: <20190801200909.12605-1-adham.abozaeid@microchip.com>
In-Reply-To: <20190801200909.12605-1-adham.abozaeid@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [198.175.253.81]
x-clientproxiedby: BYAPR06CA0038.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::15) To MWHPR11MB1373.namprd11.prod.outlook.com
 (2603:10b6:300:25::13)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0caa8759-e065-4a4a-8ed4-08d716bcf56b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB1486; 
x-ms-traffictypediagnostic: MWHPR11MB1486:
x-microsoft-antispam-prvs: <MWHPR11MB1486678D5A4B22FA5C60197B8DDE0@MWHPR11MB1486.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:530;
x-forefront-prvs: 01165471DB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(346002)(136003)(39860400002)(376002)(189003)(199004)(8936002)(81166006)(8676002)(50226002)(54906003)(25786009)(6486002)(107886003)(6436002)(486006)(256004)(6916009)(476003)(68736007)(446003)(11346002)(4326008)(66446008)(66476007)(102836004)(64756008)(2616005)(5640700003)(52116002)(66946007)(2501003)(14454004)(386003)(76176011)(66556008)(81156014)(86362001)(66066001)(2351001)(99286004)(6506007)(7736002)(305945005)(36756003)(316002)(5660300002)(6116002)(3846002)(478600001)(6512007)(26005)(71190400001)(186003)(1076003)(2906002)(71200400001)(53936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1486;
 H:MWHPR11MB1373.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RYxKbKZUTd3jay5rpf8DrhROmTyaSTH92DT6o3ToozDuQPNY2jlSutGZxXaS/zMi7g2T4MXq0ETaiTTQ85KLABqkojnyVLC4remTVPgsGCb5BAtbzxAAt2AQL4Ee7JjC0kpRTTPJfQdbX/zAyLDWZnE7Qz6WsqZQ58qLv9zZfre7cWuy7OrMC18+qNomsY/lkRDhGnH4ptPIoeILV30HoXlUmHKgo/XrajZK+8uUgb1Fc6wYWSyxUsUKWGxXRKcdJ7SU0lKMxaE7N6Pmq5Zi5NBxezn+S8hYOsl/uFUj+BD+kybIdD0dh0h1RngAAJZanDEiqebJXh6n1LkTxY2XEmIMUqyqcvqnbwVjwe/oeHBLqdS00VmYQ6YehiH90ZJHg3kaWPGTivkNFLIc9HR85riZ+6THbO37bG0seCcPTBM=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0caa8759-e065-4a4a-8ed4-08d716bcf56b
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2019 20:15:12.5862 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: adham.abozaeid@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1486
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
 johannes@sipsolutions.net, Ajay.Kathat@microchip.com,
 Adham.Abozaeid@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Adham Abozaeid <adham.abozaeid@microchip.com>

function wilc_resolve_disconnect_aberration isn't referenced, so
removing it

Signed-off-by: Adham Abozaeid <adham.abozaeid@microchip.com>
---
 drivers/staging/wilc1000/wilc_hif.c | 9 ---------
 drivers/staging/wilc1000/wilc_hif.h | 1 -
 2 files changed, 10 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_hif.c b/drivers/staging/wilc1000/wilc_hif.c
index 2b4c83b225a4..f2b7d5a1be17 100644
--- a/drivers/staging/wilc1000/wilc_hif.c
+++ b/drivers/staging/wilc1000/wilc_hif.c
@@ -798,15 +798,6 @@ int wilc_disconnect(struct wilc_vif *vif)
 	return 0;
 }
 
-void wilc_resolve_disconnect_aberration(struct wilc_vif *vif)
-{
-	if (!vif->hif_drv)
-		return;
-	if (vif->hif_drv->hif_state == HOST_IF_WAITING_CONN_RESP ||
-	    vif->hif_drv->hif_state == HOST_IF_CONNECTING)
-		wilc_disconnect(vif);
-}
-
 int wilc_get_statistics(struct wilc_vif *vif, struct rf_info *stats)
 {
 	struct wid wid_list[5];
diff --git a/drivers/staging/wilc1000/wilc_hif.h b/drivers/staging/wilc1000/wilc_hif.h
index 3bc305151651..ac5fe57f872b 100644
--- a/drivers/staging/wilc1000/wilc_hif.h
+++ b/drivers/staging/wilc1000/wilc_hif.h
@@ -222,7 +222,6 @@ void wilc_frame_register(struct wilc_vif *vif, u16 frame_type, bool reg);
 int wilc_set_operation_mode(struct wilc_vif *vif, int index, u8 mode,
 			    u8 ifc_id);
 int wilc_get_statistics(struct wilc_vif *vif, struct rf_info *stats);
-void wilc_resolve_disconnect_aberration(struct wilc_vif *vif);
 int wilc_get_vif_idx(struct wilc_vif *vif);
 int wilc_set_tx_power(struct wilc_vif *vif, u8 tx_power);
 int wilc_get_tx_power(struct wilc_vif *vif, u8 *tx_power);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
