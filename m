Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6736E50BFF
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jun 2019 15:28:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 139638532B;
	Mon, 24 Jun 2019 13:28:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yHyIq_-ihuC0; Mon, 24 Jun 2019 13:28:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 02C5E8531D;
	Mon, 24 Jun 2019 13:28:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 889881BF34F
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 13:28:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 82DD484B89
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 13:28:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HpUlexQwx3wB for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2019 13:28:26 +0000 (UTC)
X-Greylist: delayed 00:15:49 by SQLgrey-1.7.6
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-eopbgr50070.outbound.protection.outlook.com [40.107.5.70])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E0FBF8140B
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 13:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bJKNsiWuopGsFiwJtfSmHwT6t9upZDeCWjBmCmeA7XQ=;
 b=Z1jEVJMZeA2aVFeQjyVX7/o4DJ+7JCvRf4WB7j5DitZp9Eec4o34k6ZMPdBc8DRs9251E7fBsr40IgTR+/qGaLd5Ce2yN5fUuin90BVN/A4n61Dlhc8rIJpghdvWQbcEo+NvAKhD6BjynMtbuzDfvbufD3a3XZFwNSOsl4cwFyg=
Received: from VI1PR05MB4141.eurprd05.prod.outlook.com (10.171.182.144) by
 VI1PR05MB5662.eurprd05.prod.outlook.com (20.178.120.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Mon, 24 Jun 2019 13:12:30 +0000
Received: from VI1PR05MB4141.eurprd05.prod.outlook.com
 ([fe80::f5d8:df9:731:682e]) by VI1PR05MB4141.eurprd05.prod.outlook.com
 ([fe80::f5d8:df9:731:682e%5]) with mapi id 15.20.2008.014; Mon, 24 Jun 2019
 13:12:30 +0000
From: Jason Gunthorpe <jgg@mellanox.com>
To: Ajay Kaher <akaher@vmware.com>
Subject: Re: [PATCH v4 2/3][v4.9.y] coredump: fix race condition between
 mmget_not_zero()/get_task_mm() and core dumping
Thread-Topic: [PATCH v4 2/3][v4.9.y] coredump: fix race condition between
 mmget_not_zero()/get_task_mm() and core dumping
Thread-Index: AQHVKo0oRBGkKYxOxkqZ7SBtAl/moqaqx9UA
Date: Mon, 24 Jun 2019 13:12:30 +0000
Message-ID: <20190624131226.GA7418@mellanox.com>
References: <1561410186-3919-1-git-send-email-akaher@vmware.com>
 <1561410186-3919-2-git-send-email-akaher@vmware.com>
In-Reply-To: <1561410186-3919-2-git-send-email-akaher@vmware.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR2P264CA0011.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101::23)
 To VI1PR05MB4141.eurprd05.prod.outlook.com
 (2603:10a6:803:4d::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jgg@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [66.187.232.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1279592d-f3e3-4d7c-f79c-08d6f8a59cb2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR05MB5662; 
x-ms-traffictypediagnostic: VI1PR05MB5662:
x-ld-processed: a652971c-7d2e-4d9b-a6a4-d149256f461b,ExtAddr
x-microsoft-antispam-prvs: <VI1PR05MB5662688FC277DCA3E4A171D3CFE00@VI1PR05MB5662.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:407;
x-forefront-prvs: 007814487B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(346002)(136003)(396003)(366004)(199004)(189003)(5660300002)(478600001)(6506007)(53936002)(33656002)(2616005)(6486002)(81156014)(86362001)(14444005)(3846002)(256004)(8676002)(81166006)(7736002)(229853002)(2906002)(446003)(66446008)(11346002)(68736007)(6916009)(486006)(66556008)(66476007)(36756003)(71190400001)(71200400001)(476003)(73956011)(99286004)(64756008)(66946007)(54906003)(76176011)(6512007)(102836004)(1076003)(4744005)(52116002)(386003)(25786009)(6116002)(6246003)(6436002)(316002)(66066001)(14454004)(4326008)(7416002)(8936002)(186003)(26005)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR05MB5662;
 H:VI1PR05MB4141.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 40jUzpU9CguJn2eIvgacEOcIi2CYrA0fIWmsrZEo49I+3EgVJp2pRrgkltjExJd0cjLBr/ZjZlNwxkj3odOMuDp291oxCEbrf3qoTyS3t50EwIjNffVdqGTeH6SCwGNP75qu35Wfr9Fgt5LrVmv2KNlC0hj671ZjeDtCZGFuGl7uZoYiJsrZdi4d6ionXc5Hiw4AyN1GqbfMpsRhTIk04KKLL4BQOMw0SERrzFPOOZ3ElIE3NiCP6fv0/k+bGED0ir5nSBe1nGavp8idteCEzizj2yiReEGiw+Jv1jpp3+eI21DhvKqarSVs8wjJQAGdjWFsi/LMX1xvw6PCN8mBZivSW/3TKHejjD7JWQl00Jp9rHUnCy4wwss0fSFbTacnV6ybN+BzydI38iRxeDsA2x+8r0/iw5rWc1H41b2zd7M=
Content-ID: <626B17CC09D07E449465C19358AB7DB5@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1279592d-f3e3-4d7c-f79c-08d6f8a59cb2
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2019 13:12:30.5998 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jgg@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5662
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
Cc: "mhocko@suse.com" <mhocko@suse.com>,
 "peterx@redhat.com" <peterx@redhat.com>, Matan Barak <matanb@mellanox.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "amakhalov@vmware.com" <amakhalov@vmware.com>,
 "sean.hefty@intel.com" <sean.hefty@intel.com>,
 "srivatsab@vmware.com" <srivatsab@vmware.com>,
 "aarcange@redhat.com" <aarcange@redhat.com>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "dledford@redhat.com" <dledford@redhat.com>,
 "riandrews@android.com" <riandrews@android.com>,
 "hal.rosenstock@gmail.com" <hal.rosenstock@gmail.com>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "jannh@google.com" <jannh@google.com>, Leon Romanovsky <leonro@mellanox.com>,
 "jglisse@redhat.com" <jglisse@redhat.com>,
 "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>,
 Yishai Hadas <yishaih@mellanox.com>, "oleg@redhat.com" <oleg@redhat.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "arve@android.com" <arve@android.com>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "mike.kravetz@oracle.com" <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 25, 2019 at 02:33:04AM +0530, Ajay Kaher wrote:
> This patch is the extension of following upstream commit to fix
> the race condition between get_task_mm() and core dumping
> for IB->mlx4 and IB->mlx5 drivers:
> 
> commit 04f5866e41fb ("coredump: fix race condition between
> mmget_not_zero()/get_task_mm() and core dumping")'
> 
> Thanks to Jason for pointing this.
> 
> Signed-off-by: Ajay Kaher <akaher@vmware.com>
> ---
>  drivers/infiniband/hw/mlx4/main.c | 4 +++-
>  drivers/infiniband/hw/mlx5/main.c | 3 +++
>  2 files changed, 6 insertions(+), 1 deletion(-)

Looks OK

Reviewed-by: Jason Gunthorpe <jgg@mellanox.com>

Thanks
Jason
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
