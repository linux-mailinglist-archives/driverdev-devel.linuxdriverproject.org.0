Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2A9C3282
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Oct 2019 13:33:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4038F8790D;
	Tue,  1 Oct 2019 11:33:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aEfJ2tcGIjCT; Tue,  1 Oct 2019 11:33:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 29B558754B;
	Tue,  1 Oct 2019 11:33:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C47D11BF357
 for <devel@linuxdriverproject.org>; Tue,  1 Oct 2019 11:33:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C14808790D
 for <devel@linuxdriverproject.org>; Tue,  1 Oct 2019 11:33:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ai-q-a6oVpJt for <devel@linuxdriverproject.org>;
 Tue,  1 Oct 2019 11:33:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8EF8B877E4
 for <devel@driverdev.osuosl.org>; Tue,  1 Oct 2019 11:33:01 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x91BSnQo100242;
 Tue, 1 Oct 2019 11:32:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=Am+iooempG+SlcgOvuoPtWtced8jZFlU80pTSU8fThs=;
 b=Jzpf8622Rh5ybgpzhKqDsuebyuZAP0s/xa6kIbX7+mXkI08hLS/WPDdH95y8V3kgfMSn
 uEdX7BQnvSGxYuVNf3FvMhkXTFDTxyf2x4r7a/hdJFK8vgGlsoujWSJrgk+y8eTkYxqO
 69LOjFHNqVZ20UwFLFtX8rw9IG3y8nfzqC+/10htwQd+gIqInVw81oeoFr6i4u9i/mlL
 +tpcaCBds3IZkmQsr8soyGxIOUgHVirSYf9bIj9Y8LL5iBOIWDqLUjV+RKYbJAz9u8sL
 eamAFyHd3ctLi3148FO/D5kjuNHFSDunHKeoi1vKit4oTUIKjBAsD8gs0zd3GXoQ7lAa 1g== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2v9yfq5530-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Oct 2019 11:32:59 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x91BSjTQ070295;
 Tue, 1 Oct 2019 11:30:58 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2vbnqcqkgk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Oct 2019 11:30:58 +0000
Received: from abhmp0022.oracle.com (abhmp0022.oracle.com [141.146.116.28])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x91BUub1003308;
 Tue, 1 Oct 2019 11:30:57 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 01 Oct 2019 04:30:56 -0700
Date: Tue, 1 Oct 2019 14:30:43 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Yizhuo <yzhai003@ucr.edu>
Subject: Re: [PATCH] staging: rtl8723bs: Variable rf_type in function
 rtw_cfg80211_init_wiphy() could be uninitialized
Message-ID: <20191001095650.GL27389@kadam>
References: <20190928000655.27507-1-yzhai003@ucr.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190928000655.27507-1-yzhai003@ucr.edu>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9396
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910010106
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9396
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910010106
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
Cc: csong@cs.ucr.edu, devel@driverdev.osuosl.org,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Jeeeun Evans <jeeeunevans@gmail.com>, Puranjay Mohan <puranjay12@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, zhiyunq@cs.ucr.edu,
 linux-kernel@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Sep 27, 2019 at 05:06:51PM -0700, Yizhuo wrote:
> In function rtw_cfg80211_init_wiphy(), local variable "rf_type" could
> be uninitialized if function rtw_hal_get_hwreg() fails to initialize
> it. However, this value is used in function rtw_cfg80211_init_ht_capab()
> and used to decide the value writing to ht_cap, which is potentially
> unsafe.

I feel like this is from a Smatch warning.  Sure, it looks from reading
the code that rtw_hal_get_hwreg() can fail, but actually it cannot.

The longer explanation is that in these rtl drivers if you see a
function with "_hal_" in it that stands for "Hardware Abstraction Layer".
The HAL layer is nonsense.

drivers/staging/rtl8723bs/hal/hal_intf.c
   139  void rtw_hal_get_hwreg(struct adapter *padapter, u8 variable, u8 *val)
   140  {
   141          if (padapter->HalFunc.GetHwRegHandler)
   142                  padapter->HalFunc.GetHwRegHandler(padapter, variable, val);
   143  }

It looks as if reading the hardware register is an optional feature but
obviously that's not possibly true.

We can use Smatch to find out which functions implement the function
pointer:
~/smatch/smatch_data/db/smdb.py functions GetHwRegHandler

drivers/staging/rtl8723bs/hal/sdio_halinit.c | (struct hal_ops)->GetHwRegHandler | GetHwReg8723BS  | 1

So in this driver the ->GetHwRegHandler pointer always points to the
GetHwReg8723BS() function.  Then we can check what the return states
for that function are:

~/smatch/smatch_data/db/smdb.py return_states GetHwReg8723BS

It prints a lot of information but the relevant line is:

drivers/staging/rtl8723bs/hal/sdio_halinit.c | GetHwReg8723BS | 84 |               |     PARAM_SET |   2 |                   *$ |             0-u16max |

Which means that the *val is always set and never uninitialized.  This
is after I have rebuilt my Smatch DB several times.  I rebuild it every
day and it has been a long time since I started from scratch.

So removing the HAL layer would make this code parsable by Smatch and it
would make it more readable for human beings as well.  Another option
would be to just delete the "if (padapter->HalFunc.GetHwRegHandler)"
check which would also silence the false positive.  A third option would
be to add "rtw_hal_get_hwreg 2" to the
~/smatch/smatch_data/kernel.ignore_uninitialized_param file.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
