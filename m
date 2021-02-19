Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AD331F541
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 07:58:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 068BC6069A
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 06:58:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oY74_sbapQzh for <lists+driverdev-devel@lfdr.de>;
	Fri, 19 Feb 2021 06:58:01 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id B5E85606D5; Fri, 19 Feb 2021 06:58:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D2FD8605F3;
	Fri, 19 Feb 2021 06:57:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E65CD1BF368
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 06:57:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DCDAD86FA7
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 06:57:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J3LCHcqHD0Ms for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 06:57:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D154786EAF
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 06:57:33 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11J6sQn9002518;
 Fri, 19 Feb 2021 06:57:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=OuWv1NOCvL6KLKV8PTGUfvktlcxHtE9DUHDQ4QTOEpk=;
 b=CRaLHCbNxmB1mN2SSQAVpZB8SELkmHkqytgwqC4Da6l4MU08h6zKlCqYtGVjSGbunhZ+
 PdGHToGWlxpmkXuEAXgZQlTlT04pa4W6W5eDWa4BakLBsgy4xKSiN2o++kWvVDC2pYy5
 jdrALpzBqIX+M3JUwO2NLyXh+v3TMOGXLOEKDn12VVdubrhvfGNB8Fa4211xJcg/Cvnv
 KFuZRPdIvG5oROngufLrHjzhvJBhFJDbWEYnuH+dERtXOOLYA4Fl7unOt2S1s86cZI7c
 Y6OyA7exCXcCEqCvALJuYKqlU+pNeaGQpcQSadwSlf/se/ZGaGl41ltrgAVHAuryqqvY lQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2130.oracle.com with ESMTP id 36p49bgkxk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Feb 2021 06:57:32 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11J6uUMr112833;
 Fri, 19 Feb 2021 06:57:31 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 36prbrswnp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Feb 2021 06:57:31 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 11J6vQ9j003078;
 Fri, 19 Feb 2021 06:57:26 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 19 Feb 2021 06:57:25 +0000
Date: Fri, 19 Feb 2021 09:57:17 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Kurt Manucredo <fuzzybritches@protonmail.com>
Subject: Re: [PATCH] Staging: rtl8723bs: code-style fix
Message-ID: <20210219065717.GO2222@kadam>
References: <20210218163204.7-1-fuzzybritches@protonmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210218163204.7-1-fuzzybritches@protonmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9899
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 spamscore=0 mlxscore=0
 phishscore=0 adultscore=0 bulkscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102190050
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9899
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 impostorscore=0 mlxlogscore=999
 adultscore=0 malwarescore=0 phishscore=0 clxscore=1011 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102190050
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
Cc: devel@driverdev.osuosl.org, tiwai@suse.de, gregkh@linuxfoundation.org,
 d.straghkov@ispras.ru, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The subject is too vague.

On Thu, Feb 18, 2021 at 04:33:10PM +0000, Kurt Manucredo wrote:
> Signed-off-by: Kurt Manucredo <fuzzybritches@protonmail.com>
> ---
> 
> Checkpatch complains the constant needs to be on the right side of the
> comparison. The preferred way is: 
> 

The commit message isn't complete and it has to go above the Signed-off-by
line.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
