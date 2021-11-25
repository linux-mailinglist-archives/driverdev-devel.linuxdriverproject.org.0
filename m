Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 36DEC45D4E0
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Nov 2021 07:38:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4B3280B10;
	Thu, 25 Nov 2021 06:38:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IJQ5AnMW7sDP; Thu, 25 Nov 2021 06:38:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1AEFD824EE;
	Thu, 25 Nov 2021 06:38:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E39F21BF373
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 06:38:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C2139400DE
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 06:38:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com header.b="ShsPqyLx";
 dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com
 header.b="TNnp1WUS"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cxfmAHoTKewH for <devel@linuxdriverproject.org>;
 Thu, 25 Nov 2021 06:38:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9E25F40141
 for <devel@driverdev.osuosl.org>; Thu, 25 Nov 2021 06:38:12 +0000 (UTC)
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1AP6Fei7028350; 
 Thu, 25 Nov 2021 06:38:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2021-07-09;
 bh=yPWqJ4ioEyyvaMojtr/nzVDMi0ZGxjGFsI2vfeRtqaw=;
 b=ShsPqyLx8tnEJfxaGKwfZteh4xqGIgCN/pW7jAOB/EO3uWrxkNlfUluXMEHD+LhnGWRe
 zgzN/sJHYn25q/tjWGOa8pZj/HT1EFjySz2HQ96k9lwcEeboM/PyfL7y9JY5yZIUq1nH
 AkynhrCzQSDUHTozUDNkPQKcqS1kF8b0eoWkgGOcn3kWzuT7jHx8M2//9ohtuCA1WSd+
 OP1xHHgLpDP9qA/SXHedGeL3wP1zeFcYNpEedWy1dZNJdzLpgAHKTOBs+IHGMo7jADOp
 wCoAaScVUFWdoQuQiqnyLceS4ZTMYZKUY9CTcyNKX6Vopu/CakohrAUIy1qGIlqwmZo6 Lg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by mx0b-00069f02.pphosted.com with ESMTP id 3chj7g5p2e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 25 Nov 2021 06:38:06 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 1AP6ZJLG005541;
 Thu, 25 Nov 2021 06:38:05 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2104.outbound.protection.outlook.com [104.47.55.104])
 by userp3020.oracle.com with ESMTP id 3chtx7b1bn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 25 Nov 2021 06:38:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lriuewInSzcS3f8hUn87eCDNHNaNZaWHiE0Lt1g6GKolEY4dJCiGgp2yqfjuBQ9+pv+kX5sINPs466Ckf2sBmcdouqGE/19vJxQ2hWtF4m0jJ2dMXZNMflpJjfCJ+PacjdSy8Mdfe05CkzhlAXZRTIjVoGConTLAxeQ4vGzydp9mBz49pkRIabl0NeoNSdqqxgoOalGJ9oaOfBpEawzHHsD1RvMkpRn41AJcgvVOilah3blrD7ssa6BPOjTSjnVohR0mbCXjMlB6ISjH43o0KdNc79qhonvFWEFp0/uzXPFE0UPtfgBCAEx7vycYvNJBraZTD5NfF+LCaWIRFyXt5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yPWqJ4ioEyyvaMojtr/nzVDMi0ZGxjGFsI2vfeRtqaw=;
 b=lhooMP0gqQuulk+o3otVETqoFMZ+NVrfL1hpb8kfKMLi6PFwqXdbM+/ZPPV+BpuMGdkiJJyy+j1YEQnD7uOfXDTj9PzfisuZQnc//eixyQtbqMMFg/tBv1s6Q7iVvxGmmKAOPPJZBn+aqvgKO4FGsam+pe2oH2gVBp+yMHT6gRZpc6O0e+/RoUcC6NQmRJf4QqmRLxRTzgBbH+QOPlvyJLsFpGTLjtad8nBbO1ohhHIwkfwdlsj/3F6hXsqDbKBp5WDd3aCMmdNkFWMRu01mCb2czPuEie6LtSodHMJJgsjY8E++7srucTe5yaXx8ZoOGkExDGTFycBBlLMdvpycPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yPWqJ4ioEyyvaMojtr/nzVDMi0ZGxjGFsI2vfeRtqaw=;
 b=TNnp1WUS79ZWaV6Q3XfVYzgYbAN/uzRf1cg6tVqUUdgmibe2yea1qOF/mVMEtCBsdjpIAplJjjmZHUbehXq5v66b4oFjOBk9+M0/skd5zAfRTccv2W4JNAofKfJG2U61XWHfNHDIEW68YMM66trVrAtWbLIpTblWa9G1WXV7rL0=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR10MB1295.namprd10.prod.outlook.com
 (2603:10b6:300:1e::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.22; Thu, 25 Nov
 2021 06:38:02 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::7194:c377:36cc:d9f0]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::7194:c377:36cc:d9f0%6]) with mapi id 15.20.4734.022; Thu, 25 Nov 2021
 06:38:02 +0000
Date: Thu, 25 Nov 2021 09:37:38 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Todd Kjos <tkjos@google.com>
Subject: Re: [PATCH 2/3] binder: read pre-translated fds from sender buffer
Message-ID: <20211125063738.GK6514@kadam>
References: <20211123191737.1296541-1-tkjos@google.com>
 <20211123191737.1296541-3-tkjos@google.com>
 <20211124123719.GG6514@kadam>
 <CAHRSSEzj10quNV6mK9QQezPRMyO49xNA14O4wCsx+eY_UkjQWQ@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAHRSSEzj10quNV6mK9QQezPRMyO49xNA14O4wCsx+eY_UkjQWQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JNXP275CA0003.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:19::15)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kadam (102.222.70.114) by
 JNXP275CA0003.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:19::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4734.20 via Frontend Transport; Thu, 25 Nov 2021 06:37:55 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 94faadd4-fd39-4aba-babc-08d9afde20ff
X-MS-TrafficTypeDiagnostic: MWHPR10MB1295:
X-Microsoft-Antispam-PRVS: <MWHPR10MB12959E83967F416A32676F058E629@MWHPR10MB1295.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9p7cSU1AHWDeUkxbwTESst4tYV4TAEh55ALmQyr/yQVdQwPT7aVA+xOSDAHxNqE8QrEKBAQjcIqYVEPzWJOzfTel6TEHTb9Iwj8Ah7G+g7sMudTltv3LmeoCJTn/jj02rI0wTOIAYVAp4eIRm6mJWke3gkgtfpt6hLgzzIZTIDW7/AHlKekaZibRdztPgYjn2yOdO7Ws/nd/efwlFOhcgNBS3qDE+dk9fpMZptuGuKu22k6WeC56dFfhBNANtHQeL6nsH8QcNfRFRdoZoRTs+nZkTxTD9Xb/3PTmk47cBjqP6Fk0oxIn3Tefx1JLQL0fl9+/vRluRww1/JbT1pqKhdgvZ8BS2zegczVtuDYqgDDgS464dOq0D2ujAxjpyt4wFknYyq9EnATVZzWjAgYvb45UoIovE9Lz3POJuvZZcC3r88Nix6d7uNfAoJTpn5GFbsByLu9Zi8f/Nqdxa2mEpuNkSo3tBthBopQ7jAsFz8rhedGjvEtAuNCkOPMjVCDc77JMudw7hnPMxk1cnFcTR//hRs/oIVZJntbj6HG88jDaKITi0HU88qvE9Tebi6nkPEeGXsjhVLNJsumZ9rQFBLlwV76hUsnXXtH0TcT/k3Od6a9qDjz45Kw247mcaF+NAtGSOe5Wt6seTn3PCxBLPKpURWeLFV44cgVoYNC9TWh/2L/wCWjaI72AKCvjxDz48taZhFfgJyzJVc54WYPQEw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8936002)(9686003)(26005)(6496006)(38350700002)(6666004)(6916009)(508600001)(66556008)(8676002)(186003)(9576002)(1076003)(316002)(86362001)(4326008)(33716001)(66946007)(2906002)(44832011)(33656002)(956004)(4744005)(66476007)(5660300002)(38100700002)(55016003)(52116002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4dSyR7QO3O11HhjEkpYXcqnQkDrvWdeZ9gP7p9x/AGmW+MGmDZQcSyzniSy0?=
 =?us-ascii?Q?Ol0EFUUdBeld7daD12d3mRpwF51B0tIxz2eanEkDJBaaMEdOdg82K6NZRamm?=
 =?us-ascii?Q?AFwIoor5GP2KR2EDoBgVxN2TzTe5phyp0JCRoDy3L7oprcQK5eycuZ19GQKw?=
 =?us-ascii?Q?7bHGgDHiTBlYDZhdGVIGp/KSZPfNy0xoV3tp3zmYVs1IRWNG4AbETYQr7CbK?=
 =?us-ascii?Q?+RjthJQ51qZMgYx5DYi2Cszmclbnd0b7kigTLQ1meYJG77PRPsGNBEGsOp3h?=
 =?us-ascii?Q?zcaXVu81N+s1aeVAFFTHEq9JvNLmdKngKnCrFtGgNDfgn/o0xEol14Wk0xFL?=
 =?us-ascii?Q?WoatIHij5jvDsExU6SiTlAoMwl/augCuFnxLqxHd22xnLjwGZ+OR5ezyfxUS?=
 =?us-ascii?Q?45QqZz2/yfYSqYMGHAqQeCegYRZ1IDy51fHgmRpcCUnHuv1tDOiYLcNQkWhN?=
 =?us-ascii?Q?wD8rCxchLLZkiv6HlirJrPIhiBzx3yImTXz4yt8FvwqRGWLt1Gs0ie/7MmUe?=
 =?us-ascii?Q?lpKSctws4njhY7kcvt5ZuyBL8yS7q0nKd1NePkexeGst+iFjBpc71QdZpzMT?=
 =?us-ascii?Q?vEXfz8ezNMWMA9VSCVwAifn+VP3GUWSqA1znJz9gGKYkWf8dLjObdmossYMX?=
 =?us-ascii?Q?vaxQwwjtmB49gxVGmlvesiF5H/1P9SAaL21EunYK8Fr3Zq7ujd5O2SBN1ofO?=
 =?us-ascii?Q?dS1GN0hjpy4+Yh3EfUx/jho+yGxh7EBj6OnkHY6aK5RCpNvhCJQrobiVw/Td?=
 =?us-ascii?Q?UZ2L1Qpogc+Q1Wm+Hc1lgKkTm/uSUHQgYLwXW9suiXcla6tKX44x+AnuhonJ?=
 =?us-ascii?Q?gxctuoIRuRmwHHqmruJ/56x+uW4wPOxrpLBJV51oaif34gXYKP81RIy/gw3w?=
 =?us-ascii?Q?GxjkX/eK59Alqtj53GHFP7vGLRzIsfUSSqa906wABN3NXYdZiBVG5i7ciOzz?=
 =?us-ascii?Q?Oo/VAARGp0PxeXbA48L5cTdJ4jVG+GH6tmutkIPq4Kb1IF0mr6k3MjOdBhw1?=
 =?us-ascii?Q?0BrF5WEYZH59WbnYTDPb7t55U4JX3NhK9sDsZi57KJCEgGLJbiUwhP4CvYWb?=
 =?us-ascii?Q?fB6vgjbZeiD6oZRraFqTCc2ylIBmJXzfe3pq6GFygrRnsenD9qzv378ksoCX?=
 =?us-ascii?Q?zH4KdVUNI4aORqfGwBu417qrDWL1IxrVYDcqQzuEailiNQlKAY+5W9CyizO3?=
 =?us-ascii?Q?ljhfLs/xqrMgBzBLshNtEFocDWNNBXzw0SMuhpneSAeTa6xT4n1HcnEfpqAF?=
 =?us-ascii?Q?3Nnnji7mZkfdhhX9o7mozl+HCf8tDMzRTon+/1EO3HqiJ41/SGAewyfZPBXv?=
 =?us-ascii?Q?A0PvRwpK970xLcZ9BkesYMx/a6Z9zOgtvt2Bvy+saKGzALbKb2pKzL3D0M3U?=
 =?us-ascii?Q?9/WpnLAAjyWXxxjcQhSLRoTQrMZMBaz6LQKkRxP2rEZg8cczCm5nOsh2I7b0?=
 =?us-ascii?Q?lOv9bWYACqN+AuznyPTJAWYweYd20xEv/ChCBdWxSPoILws4cgaQushNbGor?=
 =?us-ascii?Q?4Pk2M/jGB/GYjT7lGyyBxUsMOqEOcrF/u2AX+3KiScahw7+jwY4sfWm0K0dQ?=
 =?us-ascii?Q?nwiW0GsAP1Z9YMFZ7jrTlzck4PF4tDlgJ2Aiu4B6EgRMk4mLTar/UTmvwqzv?=
 =?us-ascii?Q?GOqD7ejsEA8M6GdzOoFiRDMvgkqQ6+cFr+w3cP7x6AJsS3hNv7WrojOoR8c6?=
 =?us-ascii?Q?TPgiQs/2f3pX++uMrKOR7PRlFbI=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94faadd4-fd39-4aba-babc-08d9afde20ff
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2021 06:38:02.4044 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TlbNhS/WTkPnMIRoFtjcBP79192hrRzQb4tnOPJgBf8UXyqmEyWzAAsA8kxdR3oTqbNR7IqGJmpdpionlPpoWdv1RfOC8YlRnjnIJ5pTgaE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR10MB1295
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10178
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 mlxscore=0
 bulkscore=0 malwarescore=0 phishscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2110150000
 definitions=main-2111250036
X-Proofpoint-ORIG-GUID: 5I-jBMChqq-HKzoY0Nsm0qX0QlaFSfuq
X-Proofpoint-GUID: 5I-jBMChqq-HKzoY0Nsm0qX0QlaFSfuq
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
 linux-kernel@vger.kernel.org, arve@android.com, maco@google.com,
 joel@joelfernandes.org, kernel-team@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Nov 24, 2021 at 12:33:20PM -0800, Todd Kjos wrote:
> I agree -- if copy_from_user() for some reason doesn't copy the whole
> buffer, it might return a positive integer. Then it would skip
> binder_translate_fd(), but not return. That should probably be
> something like:
> 
>   if (ret)
>     return ret > 0 ? -EINVAL : ret;
> 
> Will fix in next version.

It should really be a separate patch at the start of the series because
it's from the original code and unrelated.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
