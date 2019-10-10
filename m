Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E0067D25C1
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 11:03:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC1B487D77;
	Thu, 10 Oct 2019 09:03:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nDNrwKlvNICd; Thu, 10 Oct 2019 09:03:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CAA9A87D57;
	Thu, 10 Oct 2019 09:03:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2E2361BF97B
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 09:03:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 10CC720414
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 09:03:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oprZvI3hfnIk for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 09:03:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id 84A7E20411
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 09:03:35 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9A91cR3151143;
 Thu, 10 Oct 2019 09:03:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=1cw9oEH7ZCs2HBUY1nZ4KMAQ/HcXcPqu2GOx+IY6xHk=;
 b=cZmrGisygrGJvpWx+UEHZkW6tZu3t3Nd3AwP5usb1NAjPek5krF5fYXukRoeNRqyBkxS
 2WmNnoY6kKFdPcdCBjZnxGvL8lcLk8ed6/Xmw55hS6OgMbRiNQohk0iwuV4EqhmJT95c
 TL7Dj0R0hvtLpqLjGXqOnX2JxyUNjb1VNreyazNmXba0r7X/A7x0AngQlG2mDncqYbjv
 MKL7MJahO7kX+N6DOwab2YQCdJAebAqkMM889B1ptbhpozqx5xAFcNOv1bfIXVOPXnLD
 HOM3OC9CKYj7YvvzNEu3+iUWezrmS7qIyZ2nhDMIkFUBVjVWOzlfn+N3mOeVU3kwGDa7 Gw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2vek4qst9v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 10 Oct 2019 09:03:34 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9A8qnRm078254;
 Thu, 10 Oct 2019 09:03:33 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2vhrxd95p0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 10 Oct 2019 09:03:33 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9A93WcV021873;
 Thu, 10 Oct 2019 09:03:32 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 10 Oct 2019 02:03:31 -0700
Date: Thu, 10 Oct 2019 12:03:23 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Wambui Karuga <wambui.karugax@gmail.com>
Subject: Re: [PATCH v2 0/4] staging: rtl8723bs: Style clean-up in rtw_mlme.c
Message-ID: <20191010090323.GE20470@kadam>
References: <cover.1570682635.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1570682635.git.wambui.karugax@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=693
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910100082
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=791 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910100082
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 10, 2019 at 07:49:04AM +0300, Wambui Karuga wrote:
> This patchset addresses multiple style and formatting issues reported by
> checkpatch.pl in drivers/staging/rtl8723bs/core/rtw_mlme.c
> 
> PATCH v2 of the series corrects the "patchest" mispelling in the
> original cover letter and provides a clearer subject line.

The cover letter isn't stored in the git log so spelling is not
important.  The original subjects were fine as well.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
