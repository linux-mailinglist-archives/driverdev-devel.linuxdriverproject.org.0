Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 410F93281CC
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 16:08:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB5756F4A0;
	Mon,  1 Mar 2021 15:08:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UZS4nMBUGMrM; Mon,  1 Mar 2021 15:08:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F4886EB93;
	Mon,  1 Mar 2021 15:08:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E5E9E1BF334
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 15:07:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D607C43084
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 15:07:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uv-BuboTUxXS for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 15:07:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 48D1843040
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 15:07:49 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 121F5gSR095999;
 Mon, 1 Mar 2021 15:07:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=NB2iJSeMVyTOTFdv34bJB+u+x4edHkNtd+YpZZfT2Ys=;
 b=h+0hmAwUZOmR4GVQGmDYuFRSYf7MiidQg+BR8XG6U63IgZ26iqybu9ItJubydvMz5jyG
 y13Sm4Fe1PUCBxS5rVt8JKB7sWfTj0zzs0it6WkFJodZ+hC5FeGWg15UmVIL2DV1mNRT
 FmYIp0L/SjoJwvOp9oCkOVpjQXBHK/gpHnvinJE4HS1RvLFkjC/iU8hEGFKnEVCUQI/L
 lhcWPMoKghwPbnF+SDiQgUi8CsTcrIqPbSVIAkcQdH7qMSmwNPqZRlIFPZGmPZ9BI9eU
 T6Ghok1zzbeAIJP1vDqKXNpCe8MEetR5uazXECsSXssCdbcXCOHiV1MR+Q3oka/v+sZ3 2w== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 36ydgr46dt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 01 Mar 2021 15:07:48 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 121F6v88161139;
 Mon, 1 Mar 2021 15:07:46 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 36yynmuejd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 01 Mar 2021 15:07:46 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 121F7YiR025888;
 Mon, 1 Mar 2021 15:07:34 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 01 Mar 2021 07:07:34 -0800
Date: Mon, 1 Mar 2021 18:07:25 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Candy Febriyanto <cfebriyanto@gmail.com>
Subject: Re: [PATCH v2 3/3] staging: rtl8723bs: os_dep: Replace sprintf with
 scnprintf
Message-ID: <20210301150725.GT2087@kadam>
References: <cover.1614610197.git.cfebriyanto@gmail.com>
 <d76c5f1db8dbf02ac0ab954b0971ce24e5a8b9bd.1614610197.git.cfebriyanto@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d76c5f1db8dbf02ac0ab954b0971ce24e5a8b9bd.1614610197.git.cfebriyanto@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9909
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 mlxscore=0 spamscore=0
 bulkscore=0 suspectscore=0 mlxlogscore=927 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103010128
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9910
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 adultscore=0
 impostorscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 priorityscore=1501 mlxscore=0 phishscore=0 bulkscore=0 mlxlogscore=931
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2103010128
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, hdegoede@redhat.com,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 01, 2021 at 10:00:11PM +0700, Candy Febriyanto wrote:
> The use of sprintf with format string here means that there is a risk
> that the writes will go out of bounds, replace it with scnprintf.
> 
> In one block of the translate_scan function sprintf is only called once
> (it's not being used to concatenate strings) so there is no need to keep
> the pointer "p", remove it.
> 
> Signed-off-by: Candy Febriyanto <cfebriyanto@gmail.com>
> ---

Looks good.  TBH, v1 was also fine.  I should have just acked it instead
of commenting...

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
