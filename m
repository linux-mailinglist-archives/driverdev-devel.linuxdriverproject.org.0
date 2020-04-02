Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D1719C012
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 13:22:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2BB9B2049E;
	Thu,  2 Apr 2020 11:22:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LDSSZ-z486BA; Thu,  2 Apr 2020 11:22:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EBA5B203A9;
	Thu,  2 Apr 2020 11:22:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA66E1BF3F7
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 11:22:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B71BB87B85
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 11:22:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1zreP2qUNGYq for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 11:22:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2624987B72
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 11:22:10 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 032BDkNn088511;
 Thu, 2 Apr 2020 11:21:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=AJdz6L/Vw6hmin7lipJ5B/HV3aW2/d8FK2eFPWDTde4=;
 b=V4h4DEgrooTwo8Gp+yNfnUO829ofSbMSOpY4QwsaBhwUR/u/3QLq/RSwdCHIFCD09MBC
 r0NMa/PxZhtLQ/hjZfX1DZgqFc6ZclYhtQnNq0T5FB3KRN5pbdJvILOpr/1L1PHuWs15
 q0SV99aD4I8h3ORwO+zk+VkJFZMqykQY027UFvjwB+ByslB51AIXMiymRW5iFDASZ9MD
 2AqHKYknQR+61T5YsUkv1y/41zWr0H/+5v0d2HXN1yDg22n2Kvi63bEN4gWS91cfnDpf
 cBeluIcUn+Io+YuK/QLUCXLp0IJ1rjzEyJ+jqRDoxVchuWQkbT0M5A7SlWGRGpuRsj0/ jw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 303cevaqxp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 02 Apr 2020 11:21:53 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 032BCx8q078899;
 Thu, 2 Apr 2020 11:21:53 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 302g2jcvv1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 02 Apr 2020 11:21:53 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 032BLnCJ008878;
 Thu, 2 Apr 2020 11:21:49 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 02 Apr 2020 04:21:48 -0700
Date: Thu, 2 Apr 2020 14:21:37 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: ltykernel@gmail.com
Subject: Re: [Update PATCH] x86/Hyper-V: Initialize Syn timer clock when it's
Message-ID: <20200402112137.GM2001@kadam>
References: <20200330141708.12822-1-Tianyu.Lan@microsoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330141708.12822-1-Tianyu.Lan@microsoft.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9578
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0 mlxscore=0
 adultscore=0 phishscore=0 bulkscore=0 suspectscore=1 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004020102
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9578
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 adultscore=0
 clxscore=1011 phishscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0
 suspectscore=1 mlxscore=0 impostorscore=0 mlxlogscore=999 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004020102
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
Cc: wei.liu@kernel.org, sthemmin@microsoft.com,
 Tianyu Lan <Tianyu.Lan@microsoft.com>, haiyangz@microsoft.com, x86@kernel.org,
 linux-kernel@vger.kernel.org, michael.h.kelley@microsoft.com, mingo@redhat.com,
 bp@alien8.de, hpa@zytor.com, devel@linuxdriverproject.org, tglx@linutronix.de,
 vkuznets@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This doesn't apply to today's linux-next.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
