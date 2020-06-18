Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4DE1FF423
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Jun 2020 16:03:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0BE2F89587;
	Thu, 18 Jun 2020 14:03:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rATXHo05TtY2; Thu, 18 Jun 2020 14:03:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6C168891C8;
	Thu, 18 Jun 2020 14:03:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 44D021BF29C
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 14:03:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3326D2051A
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 14:03:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ex2HZE2ZaPhE for <devel@linuxdriverproject.org>;
 Thu, 18 Jun 2020 14:03:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id 69C6F204E3
 for <devel@driverdev.osuosl.org>; Thu, 18 Jun 2020 14:03:44 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05IDvpQa099280;
 Thu, 18 Jun 2020 14:03:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=7Q0XFI0Oxm9Myh+3IsKSVpS74n63CuzM1B1s0gyKVmA=;
 b=h9S765iXMk7XkTerh/y8VGi3aPhMZIEz4DJqXxI0KYGrt0FeDc/WpYUhhlH63mvTxFUQ
 ATD+5stxqHpBq046D5ODc/vFu+NKTWQmI7qUQws9r3GJlLnAUdl0MCvF+00sHh7hF1Qc
 nF157yeaN59zGLxu6qcZZuYP6zLZIVtR9Azj1REqeWNaAnqKHfFVuYJhQuCooJLydruA
 pZ8QGb5mpR+r08DxZm5hua2qiyMojQNGtg3kpXz7sl7D2A0gay6srj0l5DA7BDgNVX2y
 0wRzgs5R5A5oFq+4TsArNHSZ9L4QJK2kwPs4Aa+DjBkoDc4uF3mT1cebXOjkTyBhV/mo 0g== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 31q6601chf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 18 Jun 2020 14:03:38 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05IDvkNM191162;
 Thu, 18 Jun 2020 14:03:38 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 31q660t3bg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Jun 2020 14:03:37 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 05IE3YdR005939;
 Thu, 18 Jun 2020 14:03:35 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 18 Jun 2020 14:03:34 +0000
Date: Thu, 18 Jun 2020 17:03:27 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Zhixu Zhao <zhixu001@126.com>
Subject: Re: [PATCH v2] staging: gasket: core: Fix a coding style issue in
 gasket_core.c
Message-ID: <20200618140327.GS4151@kadam>
References: <20200617161127.32006-1-zhixu001@126.com>
 <20200618134422.24278-1-zhixu001@126.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200618134422.24278-1-zhixu001@126.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9655
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0
 phishscore=0 bulkscore=0 malwarescore=0 mlxscore=0 adultscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006180107
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9655
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 malwarescore=0
 bulkscore=0 phishscore=0 adultscore=0 priorityscore=1501 mlxscore=0
 spamscore=0 clxscore=1015 mlxlogscore=999 suspectscore=0 impostorscore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006180107
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Richard Yeh <rcy@google.com>,
 Rob Springer <rspringer@google.com>, Joe Perches <joe@perches.com>,
 Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 18, 2020 at 09:44:22PM +0800, Zhixu Zhao wrote:
> At 2020-06-18 03:10:02, "Dan Carpenter" <dan.carpenter@oracle.com> wrote:
> >It would be better to do this in the declaration block so you can change
> >the earlier two uses in this function:
> >
> >+	struct gasket_bar_data *data = &gasket_dev->bar_data[bar_num];
> >-	ulong desc_bytes = driver_desc->bar_descriptions[bar_num].size;
> >+	ulong desc_bytes = data->size;
> >
> >...
> >
> >-	if (driver_desc->bar_descriptions[bar_num].type != PCI_BAR) {
> >+	if (data->type != PCI_BAR) {
> 
> `struct gasket_bar_data *data` and `driver_desc->bar_descriptions[bar_num]`
> are not the same thing as I see it. Besides, `struct gasket_bar_data`
> doesn't have a `size` field (it does have a `length_bytes` field).
> So... did I miss anything?
> 

Ah wow...  I'm so sorry.  You're right.  Sorry for the noise.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
