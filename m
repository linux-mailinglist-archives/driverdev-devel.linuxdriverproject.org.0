Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AF52E32647B
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Feb 2021 16:06:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03E7083C69;
	Fri, 26 Feb 2021 15:06:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9HtRnUu2FSpj; Fri, 26 Feb 2021 15:06:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 04BB883C66;
	Fri, 26 Feb 2021 15:06:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8F3F91BF2CB
 for <devel@linuxdriverproject.org>; Fri, 26 Feb 2021 15:06:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8B4D04F01B
 for <devel@linuxdriverproject.org>; Fri, 26 Feb 2021 15:06:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ogaqJClsKt1I for <devel@linuxdriverproject.org>;
 Fri, 26 Feb 2021 15:06:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 70E1D4F01D
 for <devel@driverdev.osuosl.org>; Fri, 26 Feb 2021 15:06:22 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11QF4j8B113000;
 Fri, 26 Feb 2021 15:06:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=lYKik5BaWunWMsX+x24nbiXnyXkm1hcCggYQ3wbiOsE=;
 b=yXPsmDgZlrF2FZ8WVL9u6zq2IshP7m5HvIr6hkfsLsckdfe9MVUZGp9P8585bwYnm9dh
 nTWKFKY/MaGeeSi+k6R6BzOcVuFpugTPWctNh5cBFcBFyFbCGFf0hye0a9uwpsbNvc7Y
 mtqTBHlxmFzMGCa1kaJfGLtRXwD8NOaqpdIZ42gBCXG+6yXTNVs5/RZOtxxaQ67dDjRH
 megUfeIcjadbFboIvtBVPUFkM6BgLCWddru14Y4eCb2PZbDAr1ksCOfwCcxIDUTo9q5L
 LLb2Y082eBO+vQjlIi6rOBVONkVFbrUu5rY0RJPfd77JyzRPaPRXxwAm9hLnIcDU+oYN IQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 36ugq3s3xc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 26 Feb 2021 15:06:21 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11QF6ITW071618;
 Fri, 26 Feb 2021 15:06:19 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 36uc6w06ff-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 26 Feb 2021 15:06:19 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 11QF6E2H018298;
 Fri, 26 Feb 2021 15:06:15 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 26 Feb 2021 07:06:14 -0800
Date: Fri, 26 Feb 2021 18:06:07 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Lee Gibson <leegib@gmail.com>
Subject: Re: [PATCH v3] staging: rtl8192e: Fix possible buffer overflow in
 _rtl92e_wx_set_scan
Message-ID: <20210226150607.GI2222@kadam>
References: <20210226145157.424065-1-leegib@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210226145157.424065-1-leegib@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9907
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxscore=0 spamscore=0
 mlxlogscore=999 adultscore=0 bulkscore=0 malwarescore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102260117
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9907
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0
 malwarescore=0 spamscore=0 mlxscore=0 suspectscore=0 priorityscore=1501
 clxscore=1015 impostorscore=0 lowpriorityscore=0 mlxlogscore=999
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102260117
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

On Fri, Feb 26, 2021 at 02:51:57PM +0000, Lee Gibson wrote:
> Function _rtl92e_wx_set_scan calls memcpy without checking the length.
> A user could control that length and trigger a buffer overflow.
> Fix by checking the length is within the maximum allowed size.
> 
> Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Lee Gibson <leegib@gmail.com>
> ---

Thanks!

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
