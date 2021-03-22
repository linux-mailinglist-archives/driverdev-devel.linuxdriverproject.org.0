Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 36492344FE2
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 20:29:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7271E607B8;
	Mon, 22 Mar 2021 19:29:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cY36gzx4mzRJ; Mon, 22 Mar 2021 19:29:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF87C607B5;
	Mon, 22 Mar 2021 19:29:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3E7871BF27C
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 19:29:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 287D2402E1
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 19:29:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d8BYwDUp3t4K for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 19:29:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6EFCA402D1
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 19:29:42 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12MJONRw121388;
 Mon, 22 Mar 2021 19:29:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=Q7nFxv7hPI1y2kVzGZuD75PBIwupjqNvWglIYvHIW7s=;
 b=W+fiEgm4hAFRjWb+GwXASB5VBc9HRt1iwKP1uwPcoaXJNdHzEPbQhNcgUtFbELXjjg2q
 eqWaPgzhvC1qgnQByxCYQLEs+013MIRziFxKnq6SduwiwZI9bEeDF1y57ZgZDtw0QEeX
 jYA+4P3+hdLuVaUrVzha2/x7PDl8430H3LXyObhw2MAlqogYjfZlNySb5N7b5wjtOqTZ
 8HqDzXqi4pVDfs5xuithMKBoRqEjJElnSKxsYND94kyXSIcATmMvatnkF8zKeHB8mzzf
 wPqfvnOWyBiyO8aJGm8wcLly4wUCBm00Xvx3ZEeUWswGX6kaaQiK1G1/Nh9vuMTRwCyV 1Q== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2130.oracle.com with ESMTP id 37d6jbcrag-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 Mar 2021 19:29:39 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12MJK684048179;
 Mon, 22 Mar 2021 19:29:37 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 37dttr00kd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 Mar 2021 19:29:37 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 12MJTZj3021739;
 Mon, 22 Mar 2021 19:29:35 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 22 Mar 2021 12:29:34 -0700
Date: Mon, 22 Mar 2021 22:29:27 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Fabio Aiuto <fabioaiuto83@gmail.com>
Subject: Re: [PATCH 02/11] staging: rtl8723bs: moved function prototypes out
 of core/rtw_efuse.c
Message-ID: <20210322192927.GH1717@kadam>
References: <cover.1616422773.git.fabioaiuto83@gmail.com>
 <c46e7d7a686988bb6aaea9bc24b15188136e0aed.1616422773.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c46e7d7a686988bb6aaea9bc24b15188136e0aed.1616422773.git.fabioaiuto83@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9931
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 malwarescore=0 spamscore=0
 mlxscore=0 phishscore=0 suspectscore=0 mlxlogscore=999 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103220141
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9931
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 phishscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1011 priorityscore=1501
 spamscore=0 adultscore=0 impostorscore=0 mlxlogscore=999 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2103220141
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
Cc: joe@perches.com, gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 apw@canonical.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 22, 2021 at 03:31:40PM +0100, Fabio Aiuto wrote:
> fix the following checkpatch issues:
> 
> WARNING: externs should be avoided in .c files
> 35: FILE: drivers/staging/rtl8723bs/core/rtw_efuse.c:35:
> +bool
> 
> moved two function prototypes in include/rtw_efuse.h

Can't you just make these functions static instead?

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
