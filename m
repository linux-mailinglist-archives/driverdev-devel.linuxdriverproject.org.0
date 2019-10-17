Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB76DB63C
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Oct 2019 20:33:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8058720520;
	Thu, 17 Oct 2019 18:33:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u-AjvVweztfU; Thu, 17 Oct 2019 18:33:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 52A1120415;
	Thu, 17 Oct 2019 18:33:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A81871BF3B1
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 18:33:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9165A20415
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 18:33:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uWtPldTJZTUN for <devel@linuxdriverproject.org>;
 Thu, 17 Oct 2019 18:33:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id 44DE7203EA
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 18:33:20 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9HISYTS181581;
 Thu, 17 Oct 2019 18:33:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=95YGDHIucp9+p40wpkc2Q2qCHSVjKQI1bUdWjvpo5T8=;
 b=C3wijMRSxM2cvMqGQPMT1NwDeJvb5fsS19xmf+LGUJPJ4wq3Mmhtl2+UEQ6MsbgP19pg
 rvYHDkpJgXVMcbFJ0r6xxj/yUdWDyErcwbPa/UT64o2niMkzzYQUpl9UBO/xG6BiZYuV
 7Z807Ch+M73dnr7DzQcfWa76kRH864a1MAIONM1DQAIy6mrDUzfxdzsXxsKhccogB1+l
 36pBpCUzvvMbbf1qKbTNSDAUqYY3Wg0QPV9nx92s1cTJ1zgTJnJs/ohYJMDfZy8MI798
 NOdHhXzhRzbYVIQ7NNKiJFIy6nJa06Z1BjwwpKKjNKm7RyklwIFR50uVoXUAEeS5bEf1 YA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2vk68v09cm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 17 Oct 2019 18:33:19 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9HIXBtL052383;
 Thu, 17 Oct 2019 18:33:18 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 2vpcm3d3nn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 17 Oct 2019 18:33:18 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9HIXFIX030100;
 Thu, 17 Oct 2019 18:33:16 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 17 Oct 2019 18:33:15 +0000
Date: Thu, 17 Oct 2019 21:33:08 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Aliasgar Surti <aliasgar.surti500@gmail.com>
Subject: Re: [PATCH v2] staging:rtl8723bs: removed unwanted if..else condition
Message-ID: <20191017183308.GE24678@kadam>
References: <1571321906-15074-1-git-send-email-aliasgar.surti500@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571321906-15074-1-git-send-email-aliasgar.surti500@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9413
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910170166
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9413
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910170165
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 17, 2019 at 07:48:26PM +0530, Aliasgar Surti wrote:
> From: Aliasgar Surti <aliasgar.surti500@gmail.com>
> 
> There is use of if..elseif..else condition which has same logic
> in all three blocks.
> Removed if..else block and placed log message instead that.
> 
> Signed-off-by: Aliasgar Surti <aliasgar.surti500@gmail.com>
> ---
> v2: Fixed alignment problem.

Thanks!

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
