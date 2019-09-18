Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4919FB612B
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 12:12:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2DE3386497;
	Wed, 18 Sep 2019 10:12:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tnI1klV2zlOq; Wed, 18 Sep 2019 10:12:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 054698648E;
	Wed, 18 Sep 2019 10:12:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8D7B71BF27E
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 10:12:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8A2C18577C
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 10:12:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cHxpGeMGV20w for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 10:12:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 136AF834B0
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 10:12:23 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8IA8rhU032550;
 Wed, 18 Sep 2019 10:12:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=LEpQP4ubqGDOxrZ07fkmo0XB1uZY3ye+ycbFOa2WTFQ=;
 b=ZNYguXFAW4X5rVPmlbsLOv5q4z5EnXNDoWgWzQ8VGl0aWuAYHurgtyZfffwHJENcm/tU
 E1vOPmnZhGiiDvLstgKDgdjTC4YhhFpv8RiLySqEvvCujMijFxTlMhoe66R4skEEFXfQ
 OuvjFkWTsVIPCJ4tsZAGGrzSdwdIFFWPxMxTN5/TEnyZCz7vkB0khbYJZ9/25jZR3VnV
 Y3Xy2qJU3Vx4KQx2WlXZRKGQ9zZP2PiPx577pQBfFMgotBDAwfAxE09L3u8n4vqCEhQ8
 WKIK7d4JH8kBo74LWgSeobgQ96J58juvJ1h6KaMtI6wWPvy6QXbMFkzW+FVCzqNr402R GA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2v385e2sh4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 18 Sep 2019 10:12:22 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8IA93XP090840;
 Wed, 18 Sep 2019 10:10:21 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2v37m9ab71-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 18 Sep 2019 10:10:21 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x8IAAK9U002026;
 Wed, 18 Sep 2019 10:10:20 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 18 Sep 2019 03:10:19 -0700
Date: Wed, 18 Sep 2019 13:10:11 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Aliasgar Surti <aliasgar.surti500@gmail.com>
Subject: Re: [PATCH v2] drivers:staging:rtl8723bs: Removed unneeded variables
Message-ID: <20190918101011.GE2959@kadam>
References: <1568798749-9855-1-git-send-email-aliasgar.surti500@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568798749-9855-1-git-send-email-aliasgar.surti500@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9383
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=684
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1909180101
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9383
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=781 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1909180101
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 18, 2019 at 02:55:49PM +0530, Aliasgar Surti wrote:
> From: Aliasgar Surti <aliasgar.surti500@gmail.com>
> 
> coccicheck reported warning for unneeded variable used.
> 
> This patch removes the unneeded variables.
> 
> Signed-off-by: Aliasgar Surti <aliasgar.surti500@gmail.com>
> ---
> v2: removed unneeded functions and replaced them with NULL in function array.


Thanks!

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
