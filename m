Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F9791B7D30
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Apr 2020 19:45:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 40FC787FD1;
	Fri, 24 Apr 2020 17:45:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jgyei9FfV2OB; Fri, 24 Apr 2020 17:45:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 99836876B2;
	Fri, 24 Apr 2020 17:45:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3598B1BF2A2
 for <devel@linuxdriverproject.org>; Fri, 24 Apr 2020 17:45:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 31A0A2048F
 for <devel@linuxdriverproject.org>; Fri, 24 Apr 2020 17:45:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I-IvcnyqXXar for <devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 17:45:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id CF29220466
 for <devel@driverdev.osuosl.org>; Fri, 24 Apr 2020 17:45:09 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03OHgbK7176641;
 Fri, 24 Apr 2020 17:45:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=TQ4cQstA0Q7CP1Gn2EAq7tg4nE3YvOgM09zXh9dYd9U=;
 b=F8mf3fe4t9Z//qP7FcfkRd+2J/M64Eo2tbFl1ZcRYNFAuGJgeZ20JplQw7NAdPEtcDxV
 B5Fb6gtuiM5FrLXVZ2MyrsykHLuaT0wDYail+IzsUIh3gEfJQ1JWRsubcDnZWvG8w3Uk
 ZaTX9Oh7bk7rt4UtNI5D3y2s6A8fB7U3/+wXsrsDqRpGE1zD613UHJ7YFWOHBUWLhKSk
 zckLe6ynr8otyS1Ot/2ds8QClhD2KvvL1bsAzi7OCQd/7cZP/Mi+n6BeUlwHVN3v3iPB
 Hw9k5cLI7LpINa1LNhynE7SYAYNX0bfID+qZj0FEQOSK8J5gWhwxcJZkiMkeggmLadGB Lw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 30jvq52dre-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 24 Apr 2020 17:45:08 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03OHgOle113107;
 Fri, 24 Apr 2020 17:45:07 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 30gb1q7a77-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 24 Apr 2020 17:45:07 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 03OHj6ob030291;
 Fri, 24 Apr 2020 17:45:06 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 24 Apr 2020 10:45:06 -0700
Date: Fri, 24 Apr 2020 20:45:01 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: kyoungho koo <rnrudgh@gmail.com>
Subject: Re: [PATCH] staging: gasket: fix typo in gasket_page_table.c comments.
Message-ID: <20200424174500.GQ2659@kadam>
References: <20200424162606.GA8341@koo-Z370-HD3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424162606.GA8341@koo-Z370-HD3>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9601
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 suspectscore=0 spamscore=0
 mlxlogscore=999 mlxscore=0 malwarescore=0 bulkscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004240135
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9601
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 malwarescore=0
 mlxscore=0 adultscore=0 mlxlogscore=999 phishscore=0 impostorscore=0
 clxscore=1011 bulkscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004240135
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Apr 25, 2020 at 01:26:10AM +0900, kyoungho koo wrote:
> I have found double typed comments "the the". So i modified it to
> one "the".
> 
> Signed-off-by: kyoungho koo <rnrudgh@gmail.com>
                 ^^^^^^^^^^^^

This should be your formal legal name like you would use to sign
documents.  I suspect it should be Capitalized.  The From name needs to
match so change that as well.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
