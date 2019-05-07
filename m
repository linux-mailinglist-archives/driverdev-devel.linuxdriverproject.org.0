Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EEFA716401
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 14:52:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5C1542BF4B;
	Tue,  7 May 2019 12:52:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b1I5P3JSwKEi; Tue,  7 May 2019 12:52:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C6E39226C2;
	Tue,  7 May 2019 12:51:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AF5B91BF2B7
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 12:51:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A4F558583C
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 12:51:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yjEJX5U6Gv7e for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 12:51:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr780119.outbound.protection.outlook.com [40.107.78.119])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7AC3F85810
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 12:51:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
 b=E+hA16GAMRZHIHZAs4CR/MpAVOXzHu/EmLXlhi/ZbQPJAz/TI1cFlkxrEtq6w4LRB6VJHds8DlzkR2ACgbdRHSLGPpZ1ytJc6RcCXjkwJa54VOWsUKLDg0jR/6XsY5+5HjTBR1lNxLnlYn5sLLIl8ppbeSNYVpw5zsK0vZd2A/Q=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=testarcselector01;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k0Ky181NJatpNjnAsO3YPhF0oKBEzAmcIwNcbi6h5yY=;
 b=CVawSngQnpKP9858lGqPvgCpRaelaXy2NtVUVYCOgaBs1owCKvrvL9RESmU7xltnnuRIY5sG+p2/quLYonzzWNJe9EpQeWqxcSVB4gwaLL3xOS11uVFA3o8AMjAa4JgkEZBpPSnTD3VVYAN93U81/hAVNwe+7MotlW96GDBmzRM=
ARC-Authentication-Results: i=1; test.office365.com 1;spf=none;dmarc=none
 action=none header.from=microsoft.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k0Ky181NJatpNjnAsO3YPhF0oKBEzAmcIwNcbi6h5yY=;
 b=J4MSG3Ty3FYAGby5SNsEF0eAVXGWZOOOvQetMdJBR47DDt58DIlDnGcI6VAZdqxxqR8kzDaXyHcfE6a9wISKOwtXcx0PEqu9Uw4IAAfPpq+tG6wWn25Fwkm47epb7NUPWjofp61aIgb4KkvxGNFnt1WE+TmYf+AOn2Lnrk8NZBM=
Received: from DM5PR2101MB0918.namprd21.prod.outlook.com (52.132.132.163) by
 DM5PR2101MB0902.namprd21.prod.outlook.com (52.132.132.159) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.2; Tue, 7 May 2019 12:51:52 +0000
Received: from DM5PR2101MB0918.namprd21.prod.outlook.com
 ([fe80::25b3:455b:5e85:3c60]) by DM5PR2101MB0918.namprd21.prod.outlook.com
 ([fe80::25b3:455b:5e85:3c60%3]) with mapi id 15.20.1900.002; Tue, 7 May 2019
 12:51:52 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: Dexuan Cui <decui@microsoft.com>, "linux-hyperv@vger.kernel.org"
 <linux-hyperv@vger.kernel.org>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, Stephen Hemminger <sthemmin@microsoft.com>,
 "sashal@kernel.org" <sashal@kernel.org>, Sasha Levin
 <Alexander.Levin@microsoft.com>, Haiyang Zhang <haiyangz@microsoft.com>, KY
 Srinivasan <kys@microsoft.com>, "devel@linuxdriverproject.org"
 <devel@linuxdriverproject.org>, "juliana.rodrigueiro@intra2net.com"
 <juliana.rodrigueiro@intra2net.com>
Subject: RE: [PATCH] Drivers: hv: vmbus: Fix virt_to_hvpfn() for X86_PAE
Thread-Topic: [PATCH] Drivers: hv: vmbus: Fix virt_to_hvpfn() for X86_PAE
Thread-Index: AQHVBKkKTisq9OloE02W7qrjLXJSBaZfnaGA
Date: Tue, 7 May 2019 12:51:51 +0000
Message-ID: <DM5PR2101MB09188A7DB0777CD50333F94ED7310@DM5PR2101MB0918.namprd21.prod.outlook.com>
References: <1557215147-89776-1-git-send-email-decui@microsoft.com>
In-Reply-To: <1557215147-89776-1-git-send-email-decui@microsoft.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=mikelley@ntdev.microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2019-05-07T12:51:49.1646513Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=98dfddef-5679-453b-aaa2-4ac33bc314a9;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 038d20fb-c55e-4c35-44c5-08d6d2eac710
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DM5PR2101MB0902; 
x-ms-traffictypediagnostic: DM5PR2101MB0902:
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <DM5PR2101MB0902F772A4FB05CCF3A0844CD7310@DM5PR2101MB0902.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1360;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(136003)(366004)(396003)(346002)(39860400002)(199004)(189003)(4744005)(10090500001)(71200400001)(71190400001)(86362001)(86612001)(7696005)(256004)(33656002)(186003)(14454004)(81156014)(81166006)(8936002)(22452003)(1511001)(5660300002)(99286004)(54906003)(110136005)(66066001)(316002)(8990500004)(8676002)(2201001)(76176011)(53936002)(9686003)(55016002)(6116002)(7416002)(229853002)(74316002)(68736007)(3846002)(102836004)(7736002)(6246003)(6436002)(2501003)(305945005)(4326008)(2906002)(446003)(6506007)(478600001)(10290500003)(486006)(476003)(52536014)(11346002)(26005)(25786009)(66446008)(73956011)(76116006)(66476007)(66556008)(66946007)(64756008)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR2101MB0902;
 H:DM5PR2101MB0918.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: b10gQ6SjZVqoPEjp5oLD2AbPp/q6XqYXeFaPDuA6O92UH03zjJh6oYy3OT8xkCHo73+GSWYhoVvh5vnJXlgB60uHFQyfQZJGHbGOF6ziYMagdlyxC3iDop91gzGqPzrzlBXkhaZWCtzjckD/+E6nwc2eWuANlnsVg+kkrKPJZbGo/fDDE6FG/jU+8jSu904TtlR+ogtnruzOALlgghJff4m8zuv2cNvktGRNbBmUXko7m/VdKXg3cipuX0xxqWrvPfxZahk9Li4FFv60Ly7qYwRVT/Q7NMsTIaH7NqFJnBnT0Ygq+J0MfFWLC9VO1ZZZwFsPL3pAIkIr9RByD9qyasBluycADonSmrdu2mN2IHpJD+M3vGest/amGj4d0XUJPICCqM7LkiJKy5hS7hg04ccVFFgW+ANMXJa0xjAArkg=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 038d20fb-c55e-4c35-44c5-08d6d2eac710
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 12:51:51.0333 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR2101MB0902
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
Cc: "olaf@aepfle.de" <olaf@aepfle.de>,
 "jasowang@redhat.com" <jasowang@redhat.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "apw@canonical.com" <apw@canonical.com>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 vkuznets <vkuznets@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dexuan Cui <decui@microsoft.com> Sent: Tuesday, May 7, 2019 12:47 AM
> 
> In the case of X86_PAE, unsigned long is u32, but the physical address type
> should be u64. Due to the bug here, the netvsc driver can not load
> successfully, and sometimes the VM can panic due to memory corruption (the
> hypervisor writes data to the wrong location).
> 
> Fixes: 6ba34171bcbd ("Drivers: hv: vmbus: Remove use of slow_virt_to_phys()")
> Cc: stable@vger.kernel.org
> Cc: Michael Kelley <mikelley@microsoft.com>
> Reported-and-tested-by: Juliana Rodrigueiro <juliana.rodrigueiro@intra2net.com>
> Signed-off-by: Dexuan Cui <decui@microsoft.com>

Reviewed-by:  Michael Kelley <mikelley@microsoft.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
