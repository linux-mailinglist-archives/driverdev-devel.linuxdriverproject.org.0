Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B671E5CA6
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 May 2020 12:04:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 94704870BA;
	Thu, 28 May 2020 10:04:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qLq6CLlztcqf; Thu, 28 May 2020 10:04:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A4A55870A1;
	Thu, 28 May 2020 10:04:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 022E81BF38B
 for <devel@linuxdriverproject.org>; Thu, 28 May 2020 10:04:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F2F63870A1
 for <devel@linuxdriverproject.org>; Thu, 28 May 2020 10:04:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dp50U6Pu5d9J for <devel@linuxdriverproject.org>;
 Thu, 28 May 2020 10:04:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E7E998709F
 for <devel@driverdev.osuosl.org>; Thu, 28 May 2020 10:04:47 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04S9tPjX085670;
 Thu, 28 May 2020 10:04:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=/KSuSX3QihRtC4WO/4NLERdREBLmtzhRjH7jJcqHAXA=;
 b=MHJDaRqi6IPK7bv/ILFZfjgfKp8q9mql065vuZsJCV/Gg0oVJlni1+bmyM2WHFOENOWg
 B4xFW0f0HcWhqL8EcpEbqKtG/51Wv6QAbIwVTdT70CrONPpB4Y7vsXHvhr6w+auLmLLW
 pvj1Uh/WQBhw9minbKjAdiDXZ9JHv1b3xy5ci7JHbJuCII+CZZYp3rmJ6tKlNqMYXhYW
 ftn0QXzSNuiaJx0Rq1M7inongrf31+Ra4B4+FdeslJsCcgdXmX9kYnxdpusTo0GTkzpt
 d86IDObYl3dHV2kjy/7pnf8N9qzVikSgdmU4IoHsYS/3mW8yCLjhuU95sFAoFOjVxXKn ig== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 316u8r44gs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 28 May 2020 10:04:47 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04S9mvTn052896;
 Thu, 28 May 2020 10:04:46 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 317ds28hyp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 28 May 2020 10:04:46 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04SA4iZk019698;
 Thu, 28 May 2020 10:04:44 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 28 May 2020 03:04:44 -0700
Date: Thu, 28 May 2020 13:04:38 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Pascal Terjan <pterjan@google.com>
Subject: Re: [PATCH v2] staging: rtl8723bs: Use common packet header constants
Message-ID: <20200528100438.GI30374@kadam>
References: <20200527194811.GF30374@kadam>
 <20200527205100.35794-1-pterjan@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200527205100.35794-1-pterjan@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9634
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 malwarescore=0
 mlxlogscore=999 adultscore=0 suspectscore=0 bulkscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005280066
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9634
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0
 priorityscore=1501 spamscore=0 cotscore=-2147483648 suspectscore=0
 phishscore=0 clxscore=1015 mlxlogscore=999 bulkscore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005280066
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 27, 2020 at 09:51:00PM +0100, Pascal Terjan wrote:
> This driver contains a local version of the rfc1042 header and bridge
> tunnel header constants which are available from cfg80211.h, switch to
> those.
> 
> Signed-off-by: Pascal Terjan <pterjan@google.com>
> ---
> v2: improve description and drop confusing cosmetic changes

Perfect!  Thanks.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
