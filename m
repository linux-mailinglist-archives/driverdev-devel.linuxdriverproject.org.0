Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67ECA149FDE
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 09:29:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A6D07815F8;
	Mon, 27 Jan 2020 08:28:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gbcDByE1Ro9U; Mon, 27 Jan 2020 08:28:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4A0BF805C6;
	Mon, 27 Jan 2020 08:28:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 810701BF232
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 08:28:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7D01B2042B
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 08:28:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SjwvBU1BDKyp for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 08:28:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id C7B67203A3
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 08:28:55 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00R8NbFS016585;
 Mon, 27 Jan 2020 08:28:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=8+Z6fYD9jnwP4sblY3q/qNPN7drt9aBXH7CbIrllhY0=;
 b=SKCo70V1LKl+3KQfoNW4v6xnDExd86vQCUHCr4gUq0yMMS1cuc/SDc0YdLlPjhnCVuew
 SVYt0H+RkZ+pExWmglOTyhd9LLAE7lMlZ3LyEHoM0UABygiS9ROKoVPqz+7nAxkkYpJ7
 A+BD7ftrpnN53KK4cru9gYJEP+9PqCIn4Uyfuu3nJcLnNA+xaEWq+L5mOnQ2BlIVIbKS
 nnbWIcCobbMA6GA4Z/9CPD7RWP25W5ZUaQI8dB4m3FnBJNtG4HDQ8kIPX/3TO9z12SD5
 dkxox6Ukji/hzSGhiewwKeJeWIDkf8/gVoRrVuWGwCcnjsQeeKm4HGqc/mNEOifK1YJN OA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2xrdmq5rf1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 Jan 2020 08:28:54 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00R8Ov8O137858;
 Mon, 27 Jan 2020 08:26:54 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2xry4tumt7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 Jan 2020 08:26:53 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00R8Qqsu013518;
 Mon, 27 Jan 2020 08:26:52 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 27 Jan 2020 00:26:51 -0800
Date: Mon, 27 Jan 2020 11:26:42 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Saurav Girepunje <saurav.girepunje@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: core: fix condition with no effect
Message-ID: <20200127081812.GT1847@kadam>
References: <20200125133438.GA4211@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200125133438.GA4211@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9512
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001270073
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9512
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001270073
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
 linux-kernel@vger.kernel.org, julia.lawall@lip6.fr,
 saurav.girepunje@hotmail.com, nishkadg.linux@gmail.com,
 benniciemanuel78@gmail.com, wambui.karugax@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jan 25, 2020 at 07:04:38PM +0530, Saurav Girepunje wrote:
> fix warning reorted by coccicheck
> WARNING: possible condition with no effect (if == else)
> 
> Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>

This one looks good.

The difference between this one and the last one, is that this stuff
looks like documentation but it's just a lot of garbage dead code so
it's good to delete it.

But unfortunately, these patches don't apply.  Please read
Documentation/process/email-clients.rst

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
