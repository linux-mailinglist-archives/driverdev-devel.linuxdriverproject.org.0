Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C7B3A2A8
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Jun 2019 02:25:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9EA4D85D6C;
	Sun,  9 Jun 2019 00:25:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 872n17xyJG8i; Sun,  9 Jun 2019 00:25:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2171285CB8;
	Sun,  9 Jun 2019 00:25:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 96ED41BF3CC
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 00:25:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9337521FF6
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 00:25:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id owuYSrquLUSo for <devel@linuxdriverproject.org>;
 Sun,  9 Jun 2019 00:25:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-oln040092072088.outbound.protection.outlook.com [40.92.72.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 994F520498
 for <devel@driverdev.osuosl.org>; Sun,  9 Jun 2019 00:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2GNZMzGbkVCaza1vBZJlxu2bmUQKBleBynKGY5EX3pI=;
 b=BN6b7IGj113yhHyb8WUAo8PmB8yeKh3wOwKzw7/UsD8QxacyJniVFu7EFmhF13sCivPPFJyxyR5pHpA1qgla4JqxRDsw+k29adb2Itx0rVhMJ8T9sbrJEoI08oODjL1I2JhBJxCKgge/PhbsJ2fRvzlBhVJRtfhmO+cJziiALwUEzhcEKLnzWUM0OV7CMYimB3vpoP1KXMasmarL/l6ihEytwnNioBFzRhH20nxAnY8DLHAeMshaNeQO5AYvpmkEREKl0QTSLa6nQ+KtJLiFUZOjlBVEiHGawk6Jp1U1yZ4k12VnSTkK1J7oUHLbI/BcITHDIqYmzFN2DIYfSaGOlA==
Received: from DB5EUR03FT015.eop-EUR03.prod.protection.outlook.com
 (10.152.20.54) by DB5EUR03HT074.eop-EUR03.prod.protection.outlook.com
 (10.152.21.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1965.12; Sun, 9 Jun
 2019 00:24:59 +0000
Received: from VE1PR09MB3168.eurprd09.prod.outlook.com (10.152.20.53) by
 DB5EUR03FT015.mail.protection.outlook.com (10.152.20.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1965.12 via Frontend Transport; Sun, 9 Jun 2019 00:24:59 +0000
Received: from VE1PR09MB3168.eurprd09.prod.outlook.com
 ([fe80::f0bb:30d6:5a71:a0b5]) by VE1PR09MB3168.eurprd09.prod.outlook.com
 ([fe80::f0bb:30d6:5a71:a0b5%5]) with mapi id 15.20.1965.017; Sun, 9 Jun 2019
 00:24:59 +0000
From: Rishiraj Manwatkar <manwatkar@outlook.com>
To: "isdn@linux-pingi.de" <isdn@linux-pingi.de>
Subject: [PATCH] staging: isdn: To make hysdn_proc_entry static.
Thread-Topic: [PATCH] staging: isdn: To make hysdn_proc_entry static.
Thread-Index: AQHVHlnF3XgpJkg1MkCfq0f4NtViSg==
Date: Sun, 9 Jun 2019 00:24:59 +0000
Message-ID: <VE1PR09MB31685C49AD00EC2206C471E5A4120@VE1PR09MB3168.eurprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BN6PR1801CA0021.namprd18.prod.outlook.com
 (2603:10b6:405:5f::34) To VE1PR09MB3168.eurprd09.prod.outlook.com
 (2603:10a6:802:a7::18)
x-incomingtopheadermarker: OriginalChecksum:5A3F5FF10294EAC5E9EEC0FAE20D34900D4B47750AAD045AAA50E0B5E64E043D;
 UpperCasedChecksum:2597C23CA6346934E8029135A7AD286ECA67E6FBACE4F2560579F2AB3A7CEA5A;
 SizeAsReceived:7567; Count:48
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [UJlEQvXzmOJKbzUjbzLExMobgbtqm8Xh]
x-microsoft-original-message-id: <3a4915e9645d4e792575eb185c8a188694eef6e0.1560039456.git.manwatkar@outlook.com>
x-ms-publictraffictype: Email
x-incomingheadercount: 48
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:DB5EUR03HT074; 
x-ms-traffictypediagnostic: DB5EUR03HT074:
x-microsoft-antispam-message-info: j09Dw2AiP62mBbKlCNbHvLHRWySwGFYK0lnOrDsthIbBx4Y0VmG6BvnZMe20+wpOVxiZ4PTEVk3iYeG6eBjIcb9+4Tc7fS9+VixvLdNHm8d5OhMnxuT/qfsZI2Y6KvFefixvZplwSH+L4kqIuWv3Z/ITzwwhSD4Cjo4Gq7C06tSpFnsxy9JzpT7ZYqAATJx8
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: eea2c9d3-b551-4e8a-0566-08d6ec70e819
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2019 00:24:59.7068 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR03HT074
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

	Made hysdn_proc_entry static as suggested by Sparse tool.

Signed-off-by: Rishiraj Manwatkar <manwatkar@outlook.com>
---
 drivers/staging/isdn/hysdn/hysdn_procconf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/isdn/hysdn/hysdn_procconf.c b/drivers/staging/isdn/hysdn/hysdn_procconf.c
index 73079213ec94..3d12c058a6f1 100644
--- a/drivers/staging/isdn/hysdn/hysdn_procconf.c
+++ b/drivers/staging/isdn/hysdn/hysdn_procconf.c
@@ -349,7 +349,7 @@ static const struct file_operations conf_fops =
 /*****************************/
 /* hysdn subdir in /proc/net */
 /*****************************/
-struct proc_dir_entry *hysdn_proc_entry = NULL;
+static struct proc_dir_entry *hysdn_proc_entry = NULL;
 
 /*******************************************************************************/
 /* hysdn_procconf_init is called when the module is loaded and after the cards */
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
