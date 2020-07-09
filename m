Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E7C219D1C
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Jul 2020 12:10:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 33372888C9;
	Thu,  9 Jul 2020 10:10:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i+69fCKDd5dX; Thu,  9 Jul 2020 10:10:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6A2E888959;
	Thu,  9 Jul 2020 10:10:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 51DC51BF37C
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 10:10:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4D74F87DFE
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 10:10:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mb7siO9yzCmP for <devel@linuxdriverproject.org>;
 Thu,  9 Jul 2020 10:10:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2068.outbound.protection.outlook.com [40.107.220.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9507387DCA
 for <devel@driverdev.osuosl.org>; Thu,  9 Jul 2020 10:10:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d3WiwjaXhgiEuBd5YwoqQAiac/xd0b9PhkgdxP+wvbLwNPdrTj4wGKRBwEczJssvzo3ipNvNU9dz8hTrNvdqRmifA9vR19Bt9ms6iG0k7bWHfqyZrGpBmwc7hozBTLzIOGHUJd2X95fbMoIaW6OalA/9XsJ+tvkgW0jRu9h+0ajuQKAZpRLHmWwOQXfyNP2cyZSkpmFMjGvv6dKiWbZ641qakt9qPzwYvhezvE5oYF1v2e5793lbwnGCeLnlQS4m8IEB3uncc5vdRNyxttrEObytDg/weHnGcprcKbFuBgVfyT+rIwLunGva/KPuDn5Dr3UEKwjZABe2mQqjkBI1UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ol3dRKNgADGK16AMVrjax0PuaNNuME7LlA8b3xyKLzA=;
 b=SDrMWZUrbubPilQ0O3scDhDnD53ebodVa8U5hWVbOkZbtMxsrwCcCQewvjg9C8NlSnZXJvG1486xVrbr+g5Dzq02Z1rE3ikXzkL25TeqGhfprrC0sGqxtWznDpbMogF3qsfE/m+U0F2+lbpYB8I3hVi28T0pk7vn+BnTUTGnbnTkaOd8XFaP0deA1rzUTDtnSIF7xjxjzPZlpkFBU5BacH5y3gGlB03Z4swkarosXMyhXs2a+SiQ3JuAceOvvLVVI7I52dkL6CmGiNSalim/LtiSAiFByZz4DXd6VCNmr8JIyLX0PufqsO0J68iRZCdm/PIwC02t91FwGFJlfVEhhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ol3dRKNgADGK16AMVrjax0PuaNNuME7LlA8b3xyKLzA=;
 b=bg0B6E/Sh/dR7aO4yw9c6r+mpCEWEojmm+0Ep6xaU18XULkAERro/DaAK6WBGDo8nQeVUYPosb+ab6Ev1Ql0DQL68gikSHUKwbUBUb2AIR/h8K2lcXJZJq4SaVPj39qpfZZwxwjGm5R6GEnPPCwtlKEeiXMZhj/0IIXxW09u+AY=
Authentication-Results: oracle.com; dkim=none (message not signed)
 header.d=none;oracle.com; dmarc=none action=none header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB2655.namprd11.prod.outlook.com (2603:10b6:805:62::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.22; Thu, 9 Jul
 2020 10:10:13 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::b412:798b:f6bd:3e6d]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::b412:798b:f6bd:3e6d%5]) with mapi id 15.20.3174.022; Thu, 9 Jul 2020
 10:10:13 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: dan.carpenter@oracle.com
Subject: Re: [bug report] staging: wfx: load the firmware faster
Date: Thu, 09 Jul 2020 12:09:12 +0200
Message-ID: <1713581.OkoCJHJxr1@pc-42>
Organization: Silicon Labs
In-Reply-To: <20200709092629.GA15532@mwanda>
References: <20200709092629.GA15532@mwanda>
X-ClientProxiedBy: PR2PR09CA0009.eurprd09.prod.outlook.com
 (2603:10a6:101:16::21) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.localnet (37.71.187.125) by
 PR2PR09CA0009.eurprd09.prod.outlook.com (2603:10a6:101:16::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3174.20 via Frontend Transport; Thu, 9 Jul 2020 10:10:12 +0000
X-Originating-IP: [37.71.187.125]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bf2a6b9e-ab6d-4ea8-07a8-08d823f04511
X-MS-TrafficTypeDiagnostic: SN6PR11MB2655:
X-Microsoft-Antispam-PRVS: <SN6PR11MB2655AFCA333A024BCB171BC393640@SN6PR11MB2655.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: S/7RVkT2H/b8wCLApVFTiMW5wPn841MK+NrteIDf9PnjLh1rIKl74qdse/UmhBF2x3YUvZzS59Z6wTlAbspBvGscqyawstasjQV5o+WyxkApVyXY/4C0Fgn44zF5tI6yIiBdejIEmoqH1tCVGDSKWZ+hfHwhFnN3frXE4jFWuE5IYv3f+kkXvOPSzxI4GPJiP4fPoeWcrnKcOwtb1spqWuKnfUrxdslAlZVWShCd4CptLk3DE7VkBgEUPABEqWvuSzG4xIvWf7y831e5pf0LpfQowaM771n9UfB5Bao58bod9jr3OH43ShMEMyk2/RcBEjTE8TyG0FCpTigyz0TXDAlOHb6Q8jh4aX35xJthCIL62zY0m99RRKn/H7+JEyquyY3o6xMLXomKMQfVnA0wJg9Ug3yHHPzHo1+6bwdoQyb0pX5nzPVTL3t8n1qDe/j3QcSJO0YsCKfxV2bT5u63Yw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(396003)(376002)(136003)(39860400002)(346002)(478600001)(26005)(4326008)(966005)(86362001)(52116002)(6916009)(956004)(2906002)(186003)(16526019)(83380400001)(6506007)(66574015)(4744005)(33716001)(8936002)(8676002)(5660300002)(36916002)(316002)(66556008)(66946007)(66476007)(6486002)(9686003)(6512007)(39026012);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: kM6JyLpJ3IwqRWsNSLrxlVk7jJdM35/fKCYl+nrhRJkc0c2lEtMVIJ/r55I4kSQ879DxtGpXToFrth/FHsV9XQqX9s/e1OlLdcDvOb+0w4nxkNkNQCd5561X/JLXD6uLLLoEoCvGsuARyZS3NMjdQC+Wgzq2JaoubS3FCnyBPlbOhPXjiNk1G5Gt+ccphY1vZ2kCoxaI+u7XCtHbpNvw9vK3EG2558f19phCC89OtYRk6iukNWfk1KpZ04caZ4L2NIFA1i6qTQW/LeVTO32xPjHDj8eTq3eZ4jxCc+QmvVqqwN6P0V49tFmk6UQjjHWH3ZTh1C+CpM1miruFtaiNCJmEZgvHjmHRHiADgPDSnTV7djlk6JbTbyTuXxTw6+WDJOPQ+eRVNa97N4Lu9xIs7kQaa3Pb6ZuCGAEHLjkxrbBRM/me3m5HbGYlrG5QUibdY8f1zVicxMfml4DBQuNxJdnRiX3mSVElZcZbdgkpYDQ=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf2a6b9e-ab6d-4ea8-07a8-08d823f04511
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2020 10:10:13.2981 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TqmdgMDpquowDoM55uZYk/owzsUoFJjAfFO6KQH4MW0xMBcTWuSaZBNa5+Aly7QtvCIKRpe9uWQMMogTXcqT8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2655
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thursday 9 July 2020 11:26:29 CEST dan.carpenter@oracle.com wrote:
> Hello J=E9r=F4me Pouiller,
> =

> The patch a9408ad79ff3: "staging: wfx: load the firmware faster" from
> Jul 1, 2020, leads to the following static checker warning:
> =

>         drivers/staging/wfx/fwio.c:192 upload_firmware()
>         error: uninitialized symbol 'bytes_done'.

Hello Dan,

Colin has reacted faster:
   https://lkml.org/lkml/2020/7/6/387

BTW, I though gcc was able to detect that, but I didn't get any warning =

on my side.


-- =

J=E9r=F4me Pouiller


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
