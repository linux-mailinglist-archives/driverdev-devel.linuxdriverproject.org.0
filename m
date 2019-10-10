Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9D1D25F1
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 11:09:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9F30F850DC;
	Thu, 10 Oct 2019 09:09:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U1WBfyoXFWl9; Thu, 10 Oct 2019 09:09:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 825CC80EB6;
	Thu, 10 Oct 2019 09:09:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 967141BF3FC
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 09:09:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 88453879F8
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 09:09:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P1AJZXr6fFLj for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 09:09:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E545587985
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 09:09:23 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9A99McG157524;
 Thu, 10 Oct 2019 09:09:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=Vx8uYnGXTh91J18N/6j4HjOFlm/NiKRQjZRhmX7eqBk=;
 b=XtWytnr1cBD8tC4+0Vk6zmyPiXy4cfUj9iUfPR+dv8WTt4Ozhmd7b4m4HyA6FpvzFGNZ
 4ZCeb8bsPdcOpt+ROqKYdmwnCbbyJZZRIGE4balJUESUV85nVZD1ZpEsNzLT2mC5IuQN
 vN+WFajihlVxMEzXNxLwK9JyVLiZrLWKnYMHMjM8WrNf9bkHPSpszSYRbpb2nq+XWKMp
 6A6HG5zJlxp78Bt1WtDmQ0GPeIsdpVxut8vs0PStxnfBRv7wTC31gSsHNZGgYwHRMs8X
 7pP14Tu73h32OBDYpomU954HvJ7upMSeS/4oAjET38eMCX+Aq0jYctT6cT8FSe34jTES 7w== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2vek4qsu4q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 10 Oct 2019 09:09:22 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9A98CoQ051485;
 Thu, 10 Oct 2019 09:09:19 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 2vh8k2fwx6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 10 Oct 2019 09:09:19 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9A99HRU014129;
 Thu, 10 Oct 2019 09:09:17 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 10 Oct 2019 02:09:16 -0700
Date: Thu, 10 Oct 2019 12:09:06 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Joe Perches <joe@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: qlge: Fix multiple
 assignments warning by splitting the assignement into two each
Message-ID: <20191010090906.GF20470@kadam>
References: <20191009204311.7988-1-jbi.octave@gmail.com>
 <alpine.DEB.2.21.1910092248170.2570@hadrien>
 <f9bdcaeccc9dd131f28a64f4b19136d1c92a27e2.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f9bdcaeccc9dd131f28a64f4b19136d1c92a27e2.camel@perches.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910100083
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1031
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910100083
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 GR-Linux-NIC-Dev@marvell.com, outreachy-kernel@googlegroups.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@lip6.fr>, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I was just about to give a newbie a Reviewed-by cookie until I saw it
was a Joe Perches patch without a commit message or a sign off.  And
then I was annoyed that I had invested any time in it at all.  I even
dropped out of my email client for this!

:P

If you want to resend as a proper commit then you can still have my
Reviewed-by I guess.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
