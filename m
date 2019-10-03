Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 180C6C9CF3
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Oct 2019 13:13:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E8E55228DC;
	Thu,  3 Oct 2019 11:13:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V+UmD75nvKrC; Thu,  3 Oct 2019 11:13:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CB1C722920;
	Thu,  3 Oct 2019 11:13:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C8E1E1BF488
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 11:13:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BE455861D2
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 11:13:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jAstkOlRdKdW for <devel@linuxdriverproject.org>;
 Thu,  3 Oct 2019 11:13:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0B0158389C
 for <devel@driverdev.osuosl.org>; Thu,  3 Oct 2019 11:13:11 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x93B9DLO113654;
 Thu, 3 Oct 2019 11:13:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=2QI2whAR0eSmVo1/waKAX5FLkh2SyO0ymtbtvm3t65g=;
 b=mY0ZsRuSWWsWBscNfWJCsoMDV2+OsiCTI06RsLqeRgTAWsHtaGvfjr99SyaVCnfli+Hl
 qy9HND3gjHwg/h9sUov7b9MMqsPTcRxenzpMDlVFzYgTd6WjByzN21HxiMPRFAj66ZbZ
 cOa8H8f9e4xb5s5JF8K18/jFNHu86P/wnBQD2um0QcOhToXZTrZ8P2AxB7sNXDov3y4s
 eH1RkHQFNcCXBzSE9r4oudJyD5oZL6HmEObuDrjjuARbv1im7AfvCnGqS2qa4bXW77FS
 FwWWfaJ6hI/uTPM578UYQIYTa/D6KmEv9Yi7avahP5kR6UWzd5vI6kTVbMCBw2q+PBWe qA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2v9xxv37a0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 03 Oct 2019 11:13:10 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x93B8K0K095938;
 Thu, 3 Oct 2019 11:13:10 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2vc9dnm5e7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 03 Oct 2019 11:13:10 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x93BD8v0027718;
 Thu, 3 Oct 2019 11:13:09 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 03 Oct 2019 04:13:08 -0700
Date: Thu, 3 Oct 2019 14:13:02 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Saiyam Doshi <saiyamdoshi.in@gmail.com>
Subject: Re: [PATCH] staging: exfat: use bdev_sync function directly where
 needed
Message-ID: <20191003111302.GQ22609@kadam>
References: <20191002151703.GA6594@SD>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002151703.GA6594@SD>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9398
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=939
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910030104
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9398
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910030104
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
 valdis.kletnieks@vt.edu, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 02, 2019 at 08:47:03PM +0530, Saiyam Doshi wrote:
> fs_sync() is wrapper to bdev_sync(). When fs_sync is called with
> non-zero argument, bdev_sync gets called.
> 
> Most instances of fs_sync is called with false and very few with
> true. Refactor this and makes direct call to bdev_sync() where
> needed and removes fs_sync definition.
> 
> Signed-off-by: Saiyam Doshi <saiyamdoshi.in@gmail.com>

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
