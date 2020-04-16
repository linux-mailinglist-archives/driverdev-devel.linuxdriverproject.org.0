Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6BB1AC4BB
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Apr 2020 16:03:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 559A785F5D;
	Thu, 16 Apr 2020 13:54:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hvp5JS4R7XBs; Thu, 16 Apr 2020 13:54:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BE7FF85CF2;
	Thu, 16 Apr 2020 13:54:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 353191BF5A5
 for <devel@linuxdriverproject.org>; Thu, 16 Apr 2020 13:54:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 31DAC861E7
 for <devel@linuxdriverproject.org>; Thu, 16 Apr 2020 13:54:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OQ9HybBSmjWO for <devel@linuxdriverproject.org>;
 Thu, 16 Apr 2020 13:54:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E5576861D4
 for <devel@driverdev.osuosl.org>; Thu, 16 Apr 2020 13:54:41 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03GDruw5059005;
 Thu, 16 Apr 2020 13:54:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2020-01-29;
 bh=ewaUBdhOkKob9iIFy9m3K0prmwFTG1DLRzvoCPBRDmM=;
 b=WapX0vA+MMohwDAw+oFE94garCniL8tFeOp4FSxAnPznNkgWSAg/41+GMuj8l9eKgvqK
 21eew9TudM+WsSKECzs6BsgFE+MIuGLMTEGv4UYrU9oyn2bxYrWppOcqZo3i+uTyWd37
 7C9bJi4jeNI57koT0tk43UYO7uRK0j7ex6Aj2hMm198eaAcxS2cUw3WZqOaVadF8wPvJ
 sjpwQxYtAWA54MJC6Yz279TaH/t/nGwN4Ipp0vQRRc3dkg03edVa8RhWSPZfRUfqBKTn
 3ekjd3Vbip0Tu7ilVugZVA/xXeT1gd64XuwTjw8OiL4cYE3NLVdHAMj494zKnOVArFS7 1Q== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 30emejharp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 16 Apr 2020 13:54:38 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03GDh7EI155474;
 Thu, 16 Apr 2020 13:52:37 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 30emen3jp5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 16 Apr 2020 13:52:37 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 03GDqZF0012118;
 Thu, 16 Apr 2020 13:52:35 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 16 Apr 2020 06:52:35 -0700
Date: Thu, 16 Apr 2020 16:52:25 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 12/20] staging: wfx: align semantic of beacon filter with
 other filters
Message-ID: <20200416135225.GQ1163@kadam>
References: <20200415161147.69738-1-Jerome.Pouiller@silabs.com>
 <20200415161147.69738-13-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415161147.69738-13-Jerome.Pouiller@silabs.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9592
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 mlxscore=0 suspectscore=0
 mlxlogscore=999 phishscore=0 spamscore=0 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004160098
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9592
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 impostorscore=0
 mlxscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0 mlxlogscore=999
 bulkscore=0 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004160099
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Apr 15, 2020 at 06:11:39PM +0200, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> Filters provided by HIF API are sometime inclusive, sometime exclusive.
> =

> This patch align the behavior and name of the beacon filter with the
> other filters. Also avoid double negation: "disable filter"

Hooray!  I have been wanting to suggest this every time I see the
->disable_beacon_filter name, especially for patch 7/20.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
