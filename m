Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 678A7149F82
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 09:10:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0ED862047A;
	Mon, 27 Jan 2020 08:10:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8ObfaOpaH8Cc; Mon, 27 Jan 2020 08:10:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B687D20012;
	Mon, 27 Jan 2020 08:10:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6AD641BF232
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 08:10:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6698D20012
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 08:10:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d8yf2I2ZQ+3Z for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 08:10:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id 0B39A20000
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 08:10:05 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00R88NjO020434;
 Mon, 27 Jan 2020 08:10:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=jd96EvBODZ1OmeCFJuFhnzEFmdqOYHBsCDn6ZgiV2sM=;
 b=CIjLD+pwa9IzEDfXQCAqWpdKiOFqijZCfhU2KNk3fovQVdIwTp+HghTtUvRxrqHKlkpj
 57Tl42SK0fVvDfndHCaAV/L6xHDpirawDsUg9dkGWYK6jFoN0o249KbMD4DhZSQGx08z
 k4wewgfYZjPwsYdgBSe6hLXuP6JZQn6AoTQN/LJMlfGYywFLozwZkaTqwO+gfV7brELi
 aXiET5/Q2ZYJKEguC8pXqKsJoosPvTAh4ugw1OX/J8Vclg9VhZfFjehVm/1eN+ti3cLV
 QjA8Tw0yFpA7tv4OXPF4SWci3nhqzdasG1bysc9QedomQreIMB04Y8c+98bGbZzqrOBP SA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2xreaqwkab-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 Jan 2020 08:10:05 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00R88gXq069886;
 Mon, 27 Jan 2020 08:10:04 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2xryu8v17p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 Jan 2020 08:10:04 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00R8A2ca014877;
 Mon, 27 Jan 2020 08:10:02 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 27 Jan 2020 00:10:02 -0800
Date: Mon, 27 Jan 2020 11:09:53 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Saurav Girepunje <saurav.girepunje@gmail.com>
Subject: Re: [PATCH] staging: greybus: bootrom: fix uninitialized variables
Message-ID: <20200127080953.GQ1847@kadam>
References: <20200125084403.GA3386@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200125084403.GA3386@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9512
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001270070
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9512
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001270070
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, vireshk@kernel.org,
 johan@kernel.org, linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org,
 saurav.girepunje@hotmail.com, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jan 25, 2020 at 02:14:03PM +0530, Saurav Girepunje wrote:
> fix uninitialized variables issue found using static code analysis tool
> 
> (error) Uninitialized variable: offset
> (error) Uninitialized variable: size
> 

These are false positives as Johan said.  Don't change the code just to
make the static analysis tool happy, fix the tools instead.

Also the patch doesn't apply.  Read the first paragraph of
Documentation/process/email-clients.rst and figure out why it's not
working.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
