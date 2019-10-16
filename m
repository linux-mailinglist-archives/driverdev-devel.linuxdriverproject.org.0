Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2C8D9466
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 16:55:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6C1C7869C0;
	Wed, 16 Oct 2019 14:55:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mpCW2Mn55WYH; Wed, 16 Oct 2019 14:54:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6B683869C9;
	Wed, 16 Oct 2019 14:54:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E99FD1BF2BF
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 14:54:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E648686969
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 14:54:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7V0XHpBCwLK6 for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 14:54:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7486184C9F
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 14:54:56 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9GElKxc124421;
 Wed, 16 Oct 2019 14:54:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=r44O34qzc0k+ZTr+o+pUijPkcyNeplDRN6mlyThNKVk=;
 b=gW2jvxqheJFSkpJbARyXyrxAYhwam+IiUHrBI7xDdX3mqpAyXrVaL07mJLXBog92q36K
 hcMKXJVeWZbeSshxVzb8ZGeWb16w595Q+aitLnyIdiOyIXkYHFxdprtnn86iWpDSaWkG
 jvBafqQ+mfPqUDcg9BohYEmetrmmQqyWg+ftVj9NtZSpPH6Vov4BRq7tyfRgpsa2NUQo
 vsoJvBleBKrttZq5IPjW1KRXPPkarOsgVFE9CFfihBIBFk9xSJIJf7xmkzs6kQa4ftm9
 wWU6K4bwQE2YDYR9nGW0Wp+dtU2BhODq+wp3F2gNyzFW+0fZKfFCEqpE7k5SfsYfevsR +g== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2vk6sqqjs3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 16 Oct 2019 14:54:54 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9GEmnaj194932;
 Wed, 16 Oct 2019 14:54:53 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2vnf7thbn4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 16 Oct 2019 14:54:53 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9GEsi97027860;
 Wed, 16 Oct 2019 14:54:45 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 16 Oct 2019 14:54:40 +0000
Date: Wed, 16 Oct 2019 17:54:32 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Chandra Annamaneni <chandra627@gmail.com>
Subject: Re: [PATCH 2/4] staging: KPC2000: kpc2000_spi.c: Fix style issues
 (alignment)
Message-ID: <20191016145354.GB24678@kadam>
References: <20191016074927.20056-1-chandra627@gmail.com>
 <20191016074927.20056-2-chandra627@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016074927.20056-2-chandra627@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9412
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910160129
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9412
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910160129
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com, michael.scheiderer@fau.de,
 fabian.krueger@fau.de, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, simon@nikanor.nu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 16, 2019 at 12:49:25AM -0700, Chandra Annamaneni wrote:
> Resolved: "CHECK: Alignment should match open parenthesis" from checkpatch
> 

I think you accidentally copied the wrong commit message.  This one
and the next are the same.  This description doesn't match the patch.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
