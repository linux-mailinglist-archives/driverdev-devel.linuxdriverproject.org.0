Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D7136478D
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Apr 2021 17:56:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7528B60A83;
	Mon, 19 Apr 2021 15:55:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SUxu9I8vwiD9; Mon, 19 Apr 2021 15:55:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F1A4607CD;
	Mon, 19 Apr 2021 15:55:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B66101BF592
 for <devel@linuxdriverproject.org>; Mon, 19 Apr 2021 15:55:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B271640122
 for <devel@linuxdriverproject.org>; Mon, 19 Apr 2021 15:55:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4pOLABF4F2FR for <devel@linuxdriverproject.org>;
 Mon, 19 Apr 2021 15:55:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2082.outbound.protection.outlook.com [40.107.93.82])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A2D1640100
 for <devel@driverdev.osuosl.org>; Mon, 19 Apr 2021 15:55:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Iete2Cg9VFne5/oCN7eOiDBJPeyfJRHrwrGe3HZUx236FcNoArIi1Oi3MhZMK52cxXnRrqUWJ03cISRbVJVbdz7TUaPinHdMW5FexVHxpoXcOGLgmzCEXWniWXwFvn872u+trQIYyaLCsrLPOU6jYg1ngqF5aHFwOXcaMihiEUHDdnJyLo1FDZVUfA2LEf6wd29LdBv+hm5FaOSvNxtURAWBJQryHQFOsszea50vCEe38lYvP9v3YIyfQa+1lEGHLf/UR7y6UJjuYGAnNQZCWSkhD6z+fl1/PxoGYGNK0NxABMdrkIGHwFXdPydN2ygm7Z/MNUEOMzFcJDQNZXtC7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q9pigTkxEE1gtUq4HIE7IWTQCwtA403e0Aq/6kfHCrE=;
 b=I+KOBbhc1aRDmHC1lbSZHtlGyAcMxFLMAsIuMi3xC0j8aUkA8Yf7oG0jCUeMT9REkUK4P2XRALFf3Fp1BnOYiBjQUsR4XshDpPKVuVYfAJgcdCeL+rhgoG3POvO4Kx4U4/FW4g6GAhYZsrRMjYRi3XjJL/ZbOp2ebNGaLOeZKz2xpZYITR13wFDrs3uao1SdMtsY1eaE2aQ0ajhcjuKL29ZbYSMskD9dMgSoOhIqz/JhZbhyGHMA811FIwzylumkauylzIfYyw0cX8AdZgeppHVOKCzzNsqmcgOv2itH9FQWcTkp1NDfM3IPRfm4F/Ltfpdf8QnDoL7IgOLhnUnohg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q9pigTkxEE1gtUq4HIE7IWTQCwtA403e0Aq/6kfHCrE=;
 b=JMYR18T7WHlxrMHBT29wpW0pjRV8cHprVBFJRDmX8hVXtOl0WZhDUO7O/sUqOT63K39IsuIJVySChVFNfzlUKUUP8aI2CP1FLN1nXs0DTwjTTiGt8flHoyHV2H107nRIO7drNA8rLcIm9GYe5I0o/Vfgf3rfU/eM18qPlRF/NB4=
Authentication-Results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA2PR11MB5129.namprd11.prod.outlook.com (2603:10b6:806:11f::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.23; Mon, 19 Apr
 2021 15:55:41 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::41bc:5ce:dfa0:9701]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::41bc:5ce:dfa0:9701%7]) with mapi id 15.20.4042.024; Mon, 19 Apr 2021
 15:55:41 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Ashish Kalra <eashishkalra@gmail.com>
Subject: Re: [PATCH] staging: wfx: silence symbol 'wfx_get_ps_timeout' was not
 declared warning
Date: Mon, 19 Apr 2021 17:55:34 +0200
Message-ID: <3163466.7bx4QQXRp1@pc-42>
Organization: Silicon Labs
In-Reply-To: <20210419153348.GA22782@ashish-NUC8i5BEH>
References: <20210419153348.GA22782@ashish-NUC8i5BEH>
X-Originating-IP: [2a01:e34:ecb5:66a0:ba78:8881:3e46:26de]
X-ClientProxiedBy: PR3P192CA0012.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:102:56::17) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.localnet (2a01:e34:ecb5:66a0:ba78:8881:3e46:26de) by
 PR3P192CA0012.EURP192.PROD.OUTLOOK.COM (2603:10a6:102:56::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4042.16 via Frontend Transport; Mon, 19 Apr 2021 15:55:40 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4a17183b-034f-44eb-a0d2-08d9034b958d
X-MS-TrafficTypeDiagnostic: SA2PR11MB5129:
X-Microsoft-Antispam-PRVS: <SA2PR11MB51298E018D883258E8C08D9C93499@SA2PR11MB5129.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:88;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qki7Oi+Wc0Makfqrb+vhHw/jy47C8aPwELWw3/1E4vLNnHK2S9JLyBRV0QPPP9o9mlVLpQS8dkb4O1kRGDXk837ZUzLju408gxZwC+DA9ja1R5zUAYL/y98WrCeiqhSzR7+G+k+PfdiWtv61gwEgjxJDJP91vgMqHa3s83AxF9VXQnnUL+t30OHxy2TOpsoYxED0AJz621O4opjWe17EGwTnY7uOS4xpnXZ/9loehfs3MOIRD9fTmLnPYIXg82lGElSBRMB/sBlk/k7oUYIxWnOrY8E75ofK34ZFCxJk5WaGoOfB2CHF0guio2qk0ZO1tXwNx5FXsH0oR6iE27XF1whCFsAdqwQFgxqvjTMVWp/9DqQVxwNW8WEokiXNxjN4TYyfSIp1ha+xRzV2Y4FA5hAlsgj7sIZKgQVX0ce7O9/KQZQe2W9anDwLZzJ6kKsEnfVwagtjADb7J85w0QIDbH5fGMgfYXisaOgrWYBDbXpsBSVrDsEKwOpxddE4kmIdEpb5t6LObb7zpaHuMqvNNU6eXRKBzi8iH4fhY/Omw6FEemuKunmQtnCI0v3h8RwPY8IlKsrLvOfUOG0S83szZ6NULMxG7UgK9eJPmhHewUcdOvAef9axOuLdptizKr13JXu0ckB0erNguK4M1l8k0Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(376002)(39850400004)(396003)(136003)(52116002)(8936002)(5660300002)(6486002)(66476007)(66946007)(6506007)(9686003)(66556008)(86362001)(6666004)(478600001)(66574015)(4744005)(2906002)(83380400001)(38100700002)(6512007)(316002)(110136005)(186003)(33716001)(16526019)(36916002)(8676002)(39026012);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?NLk2Mo7My7ucqUZAL8BRTx+mk5Gq0UNOInBq3cABN2MgUK3/LLUNVNYUz/?=
 =?iso-8859-1?Q?VC70G8VX7scqO6KlKkR8Wlo0QFtcxTPUk8aAi3Jp1moa5/XzGWvRI95VLw?=
 =?iso-8859-1?Q?pyahkBct17S8Nm4eukHk88eeNW+wBcd5CF0zBEgxcU7bQMDQfpmVVexk7V?=
 =?iso-8859-1?Q?S9Z3cKZWrVcVXjQ4e9Ri5BROPBgrhznKi0VrgLfk+XMv/vVA2nFjwUHMP0?=
 =?iso-8859-1?Q?a+2ViYFRB7pu/3rgDMkNqAZDbHygJffy4z9aZBmQ9CXZ94OCzSSGfkqlC/?=
 =?iso-8859-1?Q?MfcAqyj0PFsvBloLEiakDxYNGI5Wo74180LzRCC9EE378AaeY7E51wMB4k?=
 =?iso-8859-1?Q?uaWR0gJVSExKz6Z4DqHX0tLVaI4FcPMq0iETiezluCF5nE0ntU8G4EZTWT?=
 =?iso-8859-1?Q?Coo643I5bgerEqZtNJ3yodEeYj3MRrfAkt9D+A7CRsFSsZrOl2Oo+RfokA?=
 =?iso-8859-1?Q?hs4nJGFXmdk+Ivf2FsLKNEo4XbkLD5HeewbhCIp3Y1wxjqGZAOA8fzmQRN?=
 =?iso-8859-1?Q?4iSUw2eP5YhcFtTfYdt+88SWEDYRj1KrX6vPkIW+fRpi2jsfnMhWyycHn3?=
 =?iso-8859-1?Q?XQmm79jUugdFBtT9SKL/75w5fyCTDItYDaxtQJVq3AW9IOTzyySVWaR7Uy?=
 =?iso-8859-1?Q?Tnd5BGBIkApnwyufVl3PoEORtk/ct3hnnHoHEm8+kqyxkMcfUGr4S2hkmE?=
 =?iso-8859-1?Q?OsOIXeRBtZUnEXpV4rR4jOtNnZXTEz/gwM5aXWv94Nd5dP7hglardvcff6?=
 =?iso-8859-1?Q?0GaHcopjUrruWhBCDtPsdq3PLDh8DXJZohu3mOgkB99dfSh4Cd9l9uLLyV?=
 =?iso-8859-1?Q?3qgKqjBfAv1PP29HpZdgNtJ8rFH6hkaI604u9Owu451xREzzsGm7iZExMt?=
 =?iso-8859-1?Q?6xeLWrNWfjGvVNhIBAmeTYDRMxMblumdaTZovpy+MaRiaZTme6TVtq1g6w?=
 =?iso-8859-1?Q?cUOet/jAcxGjZcZ2TRvM3GtqWCKMao+wnlrd01ccX2qbr0bRkKK6EW8276?=
 =?iso-8859-1?Q?R8tCaEwWtEiUs7UcDls16hYKVyn2VrnzPCSlrwOjzfYKhgFw+ElcxEom8C?=
 =?iso-8859-1?Q?86YauuwwrVZMBJBgJLuQKTojOJ43+C5XlvsMZuUuzue2tPoBRPqmhK/rst?=
 =?iso-8859-1?Q?3Q5kLuwAZn6rv+vnwJW3p9dlEXB2IKBAD9xMcgmA/w4vKkoByKeFSnCGrn?=
 =?iso-8859-1?Q?+4XH9qV+sdg220aYknRDSkDuhEVX3+a6MBaUkl7MtGqLNFmBhXrS9qDK+5?=
 =?iso-8859-1?Q?EARAFH9pWEb5MGwTw0K8+U2Z9+evOFghYf/Tki0JdVwUCmjlpIxyQd2BXY?=
 =?iso-8859-1?Q?NYPy+IhiNRgcPdp0oJISMi8mzY0piFWFdTPo0DhWe9lxuElK22h0ymly7y?=
 =?iso-8859-1?Q?e3pK6x+Q+6wFd7OkVks2Ylh5IVfnrbl9M0dmvyetetazEXOTcmkH3988U4?=
 =?iso-8859-1?Q?EIaTVeGaLLaRVy/E?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a17183b-034f-44eb-a0d2-08d9034b958d
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2021 15:55:41.7962 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZmexMXOZTNZoYrwPy13494NZC4P1eCDlDjjyn7hkopqxklN2u4TwQobHPFn2KI8uQLIo0YC8kya5SoQZE5hqbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5129
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Monday 19 April 2021 17:33:48 CEST Ashish Kalra wrote:
> =

> Upon running sparse, "warning: symbol 'wfx_get_ps_timeout' was not declar=
ed.
> Should it be static?" and "warning: symbol 'wfx_update_pm' was not declar=
ed.
> Should it be static?" is brought to notice for this file.  static keyword
> should be added to prevent this warning. let's add it to make it cleaner =
and
> silence the Sparse warning.

Hi Ashish,

Thank you for your contribution.

It seems that this issue is already fixed by commit ce59858bbc10 "staging:
wfx: make methods 'wfx_get_ps_timeout' and 'wfx_update_pm' static" (merged
in master in version 5.8). Can you check you are working on the last tree?


-- =

J=E9r=F4me Pouiller


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
