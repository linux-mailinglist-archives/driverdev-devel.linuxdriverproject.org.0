Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6A8D0FB8
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 15:13:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DCBFD8834D;
	Wed,  9 Oct 2019 13:13:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oKuVa8t78PnR; Wed,  9 Oct 2019 13:13:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E32CA8832C;
	Wed,  9 Oct 2019 13:13:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 73B751BF2B4
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 13:12:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6FFDC86645
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 13:12:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q6R15F-WRP0e for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 13:12:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3C50F865C1
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 13:12:57 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x99D957W177865;
 Wed, 9 Oct 2019 13:12:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=T+KjUFnyFRXsMSb3ZxB9pQU7J6ab0vTyDBWPFQaIV6c=;
 b=aXm8OtCXXr42y5Xj0DxQKs5At7SOq3wPe2r0kRioNRqb1L0Vf7+G8K8MUYihqy6OQe1r
 adl5O/+uYPwURQUudvCFWD4szgiZtCVIRGi5vUZwilIoDAV7bMIHryFj634aHz/kiWBV
 j51mwrISTZc4FvXCWEDwn9F6CVWmSpjlvjtPemY7yyLzNFv37XIU5pB7ZIGXso7Gmfic
 BaA2tW766MeGDDivkUli1TAsF91YTzAm+vTDytueVafxYxyeKFmeIxKvFcxu4Xy3KIPC
 69y/M9Y+UbXXbLkQ5t1Vh/nMTrBJoOt+xRCCnK2QUmvnYhnBdBRYEcHAnm02PyMga6Ci Xg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2vek4qmade-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Oct 2019 13:12:55 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x99D42xl179120;
 Wed, 9 Oct 2019 13:12:55 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2vgev1byf1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Oct 2019 13:12:55 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x99DCrUW003330;
 Wed, 9 Oct 2019 13:12:53 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 09 Oct 2019 06:12:52 -0700
Date: Wed, 9 Oct 2019 16:12:40 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: zhengbin <zhengbin13@huawei.com>
Subject: Re: [PATCH 1/3] staging: wfx: Make function 'sram_write_dma_safe',
 'load_firmware_secure' static
Message-ID: <20191009131240.GO25098@kadam>
References: <1570626219-37733-1-git-send-email-zhengbin13@huawei.com>
 <1570626219-37733-2-git-send-email-zhengbin13@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570626219-37733-2-git-send-email-zhengbin13@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9404
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910090125
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9404
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910090126
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 09, 2019 at 09:03:37PM +0800, zhengbin wrote:
> -int sram_write_dma_safe(struct wfx_dev *wdev, u32 addr, const u8 *buf, size_t len)
> +static int
> +sram_write_dma_safe(struct wfx_dev *wdev, u32 addr, const u8 *buf, size_t len)

Either declaration style is fine, but keep it consistent within the
file.  Here the style should be:

static int sram_write_dma_safe(struct wfx_dev *wdev, u32 addr, const u8 *buf,
			       size_t len)

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
