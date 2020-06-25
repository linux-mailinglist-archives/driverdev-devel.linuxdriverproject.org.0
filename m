Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D6E209BB6
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jun 2020 11:06:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4FF8F863AE;
	Thu, 25 Jun 2020 09:06:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tG3gbW8AGIRk; Thu, 25 Jun 2020 09:06:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7B9618641E;
	Thu, 25 Jun 2020 09:06:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 226261BF84C
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 09:06:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1F6D8877CE
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 09:06:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kM0rc0BrulnQ for <devel@linuxdriverproject.org>;
 Thu, 25 Jun 2020 09:06:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C01268777F
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 09:06:31 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05P91wuG042663;
 Thu, 25 Jun 2020 09:06:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=jd+/RPkDy7bnVcC1uk3jVoDWXKBx4hurng/iA3UJhL8=;
 b=uENLxnoIiNBWH+u8FX4f/OC5xhbEkvkvBjwJE9tU4biFgduXH+D5ocp9MkRhpBqp+FnT
 3wGd8uNuHi3F78eyAhH096U2P4NuPYv6Vs9FCtnEm4V7damPmIpFl4U2DD/fDO+fMBVi
 wNte8bwNEgmnqFfD/HCCtnKt/07IZ0iIxIwzl7BFyMUCbMTPwke/F8bnQJztCvUysR/y
 /UMT/11kOjj0FyWxyipEdd4FCTznuOp5fCrXEpPLHpxhR5dXEQE+J5KqoZBdzjQ3yiQc
 aXbTivRdiK2IaoF54znAhW5fsMqN+6q8iqEI0AUVzTk1NovHbRptL02ICkyBZmQG50TO Mw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 31uustyd3e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 25 Jun 2020 09:06:30 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05P93wC7134583;
 Thu, 25 Jun 2020 09:06:30 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 31uur0xpse-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 25 Jun 2020 09:06:30 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 05P96R2x020365;
 Thu, 25 Jun 2020 09:06:27 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 25 Jun 2020 09:06:27 +0000
Date: Thu, 25 Jun 2020 12:06:10 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Garrit Franke <garritfranke@gmail.com>
Subject: Re: [PATCH v2 1/2] staging: vc04_services: vchiq_arm: replace
 bitshift with BIT macro
Message-ID: <20200625090610.GA2571@kadam>
References: <20200619080121.GV4151@kadam>
 <20200624182035.16740-2-garritfranke@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200624182035.16740-2-garritfranke@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9662
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxlogscore=999
 adultscore=0 mlxscore=0 suspectscore=0 malwarescore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006250056
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9662
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 bulkscore=0
 cotscore=-2147483648 malwarescore=0 mlxscore=0 clxscore=1015
 lowpriorityscore=0 mlxlogscore=999 phishscore=0 priorityscore=1501
 spamscore=0 impostorscore=0 adultscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006250056
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
 nsaenzjulienne@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jun 24, 2020 at 08:20:34PM +0200, Garrit Franke wrote:
> This should prevent possible overflowing bits by using the BIT macro in
> vchiq_core
> 

There are no "overflowing bits".  Fold both patches together.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
