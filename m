Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D9F8C588
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Aug 2019 03:22:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8B67D20471;
	Wed, 14 Aug 2019 01:22:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o8rEV1Y2zhwo; Wed, 14 Aug 2019 01:22:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 06FA3204AA;
	Wed, 14 Aug 2019 01:22:30 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CE84D1BF297
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 14 Aug 2019 01:22:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CADE28758C
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 14 Aug 2019 01:22:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UFImJw16pYv6
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 14 Aug 2019 01:22:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from APC01-PU1-obe.outbound.protection.outlook.com
 (mail-eopbgr1320123.outbound.protection.outlook.com [40.107.132.123])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DB81187586
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 14 Aug 2019 01:22:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZiINn5dt8HQCvl6R8SgKLct0TFsgAxP3/pNBODeSDM7YmyJpb3YrhNaxif/NhIk7Hbocw71+ljY5oOndZcB0MUs+KpslMsMouQ4n+B6JFWPFBfAH1cti85Vhhnl4ExYBFjsNePvWpDpOCerOH1n4l8WkdhFSDvr9l+uuggPkm+FI3cVbSGMATamz+rR5e22CSIx+g55lHV2cH8cuWDSY1pPkFW1PH8J6hQjo5XJm2Iuxl657cIBiKOytyyL7twPQY1ifsmQInxLLbkhu/YyWFR55SLEceKmDBrM1ahmKwq22TVy6qHU0XCYl+yc+NGEdNAhSvTc9zUiYFZ6D3oPhaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=itLC2RPsekQuJVazpsDF3QvsNHrKsHdmzg8ixYRIRzY=;
 b=HXFWPMYjPvoP1yqwtzbgokgR3OcDpoVUygNugP8nT9PRHV+Pa/wDDYdfzmhUtRM9mKCIngP9KsTkb/xN7vQBvCq/3bQc14A5yuIRGNG7eh3d6tyigSJD7KvNjzP4Sr25jhaY9vDfJeQYGQkp4N+mBvuROuhfqNWXkdpjIJgVpVcZMUPyyblFYUNTTKYNx4i8vZsWrdA9AO9Zk8RvVhqxGqMOjVn9FPBNJDggz93Q7lSRX871+1mSqis2yh6WmTeR0swvzc1QA7Cgu4AJfWeynuXPu4+20gu+KSvthY31JEUlMcDTxoH5Ol8RomsYKf5s3F76jRBWMKPfaWiJA7L6Dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=itLC2RPsekQuJVazpsDF3QvsNHrKsHdmzg8ixYRIRzY=;
 b=GNjQSy8C7wmYA6ncnQGAQPCkwH9zEkPF51oBddw8fkhx06jqGIryBjzCdR4G6chr/nBrXcpxyPEmUEGwm3S5H8KRgTN8RtCds5YGmZ4nUDLtj2e0DAdU7NsIxEMUr2jOnG7wriHkhwzTx7v2aj30UiIDXpgDtAZIb8Wwj4eTl9o=
Received: from KU1P153MB0166.APCP153.PROD.OUTLOOK.COM (10.170.173.13) by
 KU1P153MB0134.APCP153.PROD.OUTLOOK.COM (10.170.172.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.6; Wed, 14 Aug 2019 01:06:55 +0000
Received: from KU1P153MB0166.APCP153.PROD.OUTLOOK.COM
 ([fe80::4045:2f8d:e15b:343f]) by KU1P153MB0166.APCP153.PROD.OUTLOOK.COM
 ([fe80::4045:2f8d:e15b:343f%6]) with mapi id 15.20.2178.006; Wed, 14 Aug 2019
 01:06:55 +0000
From: Dexuan Cui <decui@microsoft.com>
To: "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>, "linux-pci@vger.kernel.org"
 <linux-pci@vger.kernel.org>
Subject: [PATCH v2] PCI: PM: Move to D0 before calling
 pci_legacy_resume_early()
Thread-Topic: [PATCH v2] PCI: PM: Move to D0 before calling
 pci_legacy_resume_early()
Thread-Index: AdVSPER5d22rbcvgTV28JV77HSffhg==
Date: Wed, 14 Aug 2019 01:06:55 +0000
Message-ID: <KU1P153MB016637CAEAD346F0AA8E3801BFAD0@KU1P153MB0166.APCP153.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=decui@microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2019-08-14T01:06:51.2322584Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=ab25360d-4a75-4436-9390-ec9b2f112f8b;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=decui@microsoft.com; 
x-originating-ip: [2001:4898:80e8:8:8845:6657:9e4:58a7]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bef09af2-aa2a-4293-76c0-08d72053b343
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600158)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:KU1P153MB0134; 
x-ms-traffictypediagnostic: KU1P153MB0134:|KU1P153MB0134:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <KU1P153MB0134BD13FA97C55C18DB7872BFAD0@KU1P153MB0134.APCP153.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01294F875B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(136003)(396003)(346002)(376002)(366004)(54534003)(189003)(199004)(76116006)(66946007)(66476007)(66446008)(64756008)(486006)(107886003)(476003)(66556008)(10290500003)(81156014)(6506007)(2906002)(81166006)(478600001)(102836004)(186003)(14454004)(7416002)(10090500001)(4326008)(74316002)(46003)(33656002)(305945005)(7736002)(53936002)(25786009)(7696005)(8936002)(8676002)(22452003)(71200400001)(52536014)(316002)(2501003)(256004)(8990500004)(14444005)(9686003)(6116002)(6436002)(71190400001)(99286004)(110136005)(86362001)(55016002)(54906003)(2201001)(5660300002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:KU1P153MB0134;
 H:KU1P153MB0166.APCP153.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qOEW4ryiaevi4J9/6Tmmxf8mwexOMh/84L5yojvgCXK1AhoK9ZdpDY7VSZXxitDLEc5JWtbRECQrRpsZYrpoL7D5a3XrVc+4R5WPgBdr8caPVfZUR37nAz5egsPrv19Q1j0bBehrPLlDh4ebSFFxIzmd2eitLFeJYEFDjOyfUT4yxECz1hOx+7QTf88nv+i7+apzdFG1i4x08PbhW+3Wgx3UYfptow2thWtv/KNWkLp7A9Ca3ddvCVYOqw1ogXvlhBTcsGyoc/3SqaWExNDif4fsupqyTxrBvkT9XjTWUdA4f62cYTBSccj6KMUih3Z5e2ohRLh+wKQqS2cP/X/c7oEr05Cb6DI1thaiVBIrdtHHMIvU2GKxvlHm8uRWGimLr0Vc3NGSy7k6C2A9EW9c9h9Q18r22+S9azBoGFt3AY0=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bef09af2-aa2a-4293-76c0-08d72053b343
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2019 01:06:55.2655 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rL4KkKwdMkrJbN7h8XAeQJz2iBwjxtax2RhMUxv+E2Y2vPV3wcX3XjChBQ6kwLDt44YICso0CXUSiGyZp5b+0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KU1P153MB0134
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
Cc: "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 "jackm@mellanox.com" <jackm@mellanox.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 "driverdev-devel@linuxdriverproject.org"
 <driverdev-devel@linuxdriverproject.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michael Kelley <mikelley@microsoft.com>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>, "apw@canonical.com" <apw@canonical.com>,
 vkuznets <vkuznets@redhat.com>, "jasowang@redhat.com" <jasowang@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


In pci_legacy_suspend_late(), the device state is moved to PCI_UNKNOWN.

In pci_pm_thaw_noirq(), the state is supposed to be moved back to PCI_D0,
but the current code misses the pci_legacy_resume_early() path, so the
state remains in PCI_UNKNOWN in that path. As a result, in the resume
phase of hibernation, this causes an error for the Mellanox VF driver,
which fails to enable MSI-X because pci_msi_supported() is false due
to dev->current_state != PCI_D0:

mlx4_core a6d1:00:02.0: Detected virtual function - running in slave mode
mlx4_core a6d1:00:02.0: Sending reset
mlx4_core a6d1:00:02.0: Sending vhcr0
mlx4_core a6d1:00:02.0: HCA minimum page size:512
mlx4_core a6d1:00:02.0: Timestamping is not supported in slave mode
mlx4_core a6d1:00:02.0: INTx is not supported in multi-function mode, aborting
PM: dpm_run_callback(): pci_pm_thaw+0x0/0xd7 returns -95
PM: Device a6d1:00:02.0 failed to thaw: error -95

To be more accurate, the "resume" phase means the "thaw" callbacks which
run before the system enters hibernation: when the user runs the command
"echo disk > /sys/power/state" for hibernation, first the kernel "freezes"
all the devices and creates a hibernation image, then the kernel "thaws"
the devices including the disk/NIC, writes the memory to the disk, and
powers down. This patch fixes the error message for the Mellanox VF driver
in this phase.

When the system starts again, a fresh kernel starts to run, and when the
kernel detects that a hibernation image was saved, the kernel "quiesces"
the devices, and then "restores" the devices from the saved image. In this
path:
device_resume_noirq() -> ... ->
  pci_pm_restore_noirq() ->
    pci_pm_default_resume_early() ->
      pci_power_up() moves the device states back to PCI_D0. This path is
not broken and doesn't need my patch.

Signed-off-by: Dexuan Cui <decui@microsoft.com>
---

changes in v2:
	Updated the changelog with more details.

 drivers/pci/pci-driver.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/pci-driver.c b/drivers/pci/pci-driver.c
index 36dbe960306b..27dfc68db9e7 100644
--- a/drivers/pci/pci-driver.c
+++ b/drivers/pci/pci-driver.c
@@ -1074,15 +1074,16 @@ static int pci_pm_thaw_noirq(struct device *dev)
 			return error;
 	}
 
-	if (pci_has_legacy_pm_support(pci_dev))
-		return pci_legacy_resume_early(dev);
-
 	/*
 	 * pci_restore_state() requires the device to be in D0 (because of MSI
 	 * restoration among other things), so force it into D0 in case the
 	 * driver's "freeze" callbacks put it into a low-power state directly.
 	 */
 	pci_set_power_state(pci_dev, PCI_D0);
+
+	if (pci_has_legacy_pm_support(pci_dev))
+		return pci_legacy_resume_early(dev);
+
 	pci_restore_state(pci_dev);
 
 	if (drv && drv->pm && drv->pm->thaw_noirq)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
