Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FA933CE14
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 07:48:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A8424300B;
	Tue, 16 Mar 2021 06:48:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7uWgOUhfmnGF; Tue, 16 Mar 2021 06:48:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6973243011;
	Tue, 16 Mar 2021 06:48:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 87CC01BF295
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 06:48:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7711060648
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 06:48:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 51DE6K_b4gql for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 06:48:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C4E7C60646
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 06:48:09 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12G6i5Ew142077;
 Tue, 16 Mar 2021 06:48:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=0egzDSH2z3u1DhfuSB6BBjeSwqI3MsOZjiDXmD94e6k=;
 b=GFb204IgUH/i3I80fPuP7gjfTxtv4ArpjTwspHEckyPeCiXD5CGD7zaASHa2vTgFuG7l
 zyaciqNEcNWciBmwEkuFHoyTfON5J7BDXFKEGPc2P09vYEZFs6GPB650CEqq3GhHAhp9
 RydPUBlDuYnS/q6h2KS+FWK4XhXBWTT7g+tCf15P2MfzDmh3yvQj236cOfql0LyUael2
 wHC5w5YHl+rbCO6q5KRDTpDXcT3r3atggeAIVU55FYFNIFkfgpSZMb/tUJGcwy24wg3r
 TqJB35xEZQ6Gky4Nv4WjxIgtQ5fJqdTEC1XQoRkxnV9vt5d+M9jL1Pc2XsavCA6WK+hp rg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 378p1npevk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Mar 2021 06:48:08 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12G6jqDv177680;
 Tue, 16 Mar 2021 06:48:07 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 3797aynp59-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Mar 2021 06:48:07 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 12G6m5J5006373;
 Tue, 16 Mar 2021 06:48:05 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 15 Mar 2021 23:48:04 -0700
Date: Tue, 16 Mar 2021 09:47:56 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: zhaoxiao <zhaoxiao@uniontech.com>
Subject: Re: [PATCH v2] staging: rtl8192u: remove extra lines
Message-ID: <20210316064756.GQ21246@kadam>
References: <20210316024410.24609-1-zhaoxiao@uniontech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210316024410.24609-1-zhaoxiao@uniontech.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9924
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0 bulkscore=0
 malwarescore=0 adultscore=0 mlxscore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103160045
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9924
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 suspectscore=0 adultscore=0
 spamscore=0 clxscore=1011 phishscore=0 malwarescore=0 priorityscore=1501
 bulkscore=0 mlxlogscore=999 lowpriorityscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103160045
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
 linux-kernel@vger.kernel.org, serrazimone@gmail.com, lu@pplo.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Mar 16, 2021 at 10:44:10AM +0800, zhaoxiao wrote:
> Remove extra lines in many functions in r8192U_wx.c.
> 
> Signed-off-by: zhaoxiao <zhaoxiao@uniontech.com>
> ---
>  drivers/staging/rtl8192u/r8192U_wx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
                   ^^^^^^^^^^^^
The commit message says you're removing lines but you're also adding
them.  :P

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
