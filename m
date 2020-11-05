Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E39982A7C0F
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 11:41:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6641786239;
	Thu,  5 Nov 2020 10:41:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t0nRVGDY0S2H; Thu,  5 Nov 2020 10:41:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EA88E861AB;
	Thu,  5 Nov 2020 10:41:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C4A5D1BF575
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 10:41:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C0D5D8700D
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 10:41:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6smyu-JLomQJ for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 10:41:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2F9E686C6D
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 10:41:31 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0A5AXb69072914;
 Thu, 5 Nov 2020 10:41:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=+Ra+gJnpByufEAECujqP9/q8vaiN8Q3YVYin+oUfpu4=;
 b=V0Nn5NxeVFSEtgozRg2ffSqbPrElFiMNl5zZTNIN/UFI55ZVcN5O0F+e+yf19o/VOZah
 a1q2ciKGhW6DhnJW+1SMrLwphj08Qn054BhjX6rHqGjv+eEi8Mr+ZEWVcB6lgJaTqhNk
 VoyV8Oj61rGv7wa59/QC5xLFdP3Yh6X1urJPA8W/0/24hOhWbHxJ2h47Kn7f6pTfIw7W
 +Yl9MzImUX2vX/EsXMu0PFi2GyImYsrdF80G+SoVMeCq5nie1OYkg0JHEoi3QuS6240I
 tINi0Bw84BgyNTj0m6OjNaPjFCabx0/45V+ZLuY+AwQI1s7bm3aCwtiDxuxyVBSR0PM4 Pw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2130.oracle.com with ESMTP id 34hhb2b750-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 05 Nov 2020 10:41:21 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0A5AYlps104535;
 Thu, 5 Nov 2020 10:41:21 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 34hw0h5q0v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 05 Nov 2020 10:41:20 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0A5AfEvW030904;
 Thu, 5 Nov 2020 10:41:14 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 05 Nov 2020 02:41:13 -0800
Date: Thu, 5 Nov 2020 13:41:02 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH -next] media: cedrus: fix reference leak in
 cedrus_start_streaming
Message-ID: <20201105104102.GA29398@kadam>
References: <20201102142622.140001-1-zhangqilong3@huawei.com>
 <20201102141838.7oicqkeqy7vy3ki3@gilmour.lan>
 <2eb14a6d-4680-1527-0985-fd371e3ba2e8@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2eb14a6d-4680-1527-0985-fd371e3ba2e8@xs4all.nl>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9795
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxlogscore=999
 phishscore=0 bulkscore=0 spamscore=0 malwarescore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2011050072
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9795
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 phishscore=0 suspectscore=0
 clxscore=1015 mlxlogscore=999 impostorscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011050072
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
 Zhang Qilong <zhangqilong3@huawei.com>, paul.kocialkowski@bootlin.com,
 wens@csie.org, Maxime Ripard <maxime@cerno.tech>, mchehab@kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Nov 04, 2020 at 12:39:11PM +0100, Hans Verkuil wrote:
> On 02/11/2020 15:18, Maxime Ripard wrote:
> > On Mon, Nov 02, 2020 at 10:26:22PM +0800, Zhang Qilong wrote:
> >> pm_runtime_get_sync will increment pm usage counter even it
> >> failed. Forgetting to pm_runtime_put_noidle will result in
> >> reference leak in cedrus_start_streaming. We should fix it.
> >>
> >> Fixes: d5aecd289babf ("media: cedrus: Implement runtime PM")
> >> Signed-off-by: Zhang Qilong <zhangqilong3@huawei.com>
> > 
> > Shouldn't we fix pm_runtime_get_sync instead then? It seems that most of
> > the callers get this wrong, and that's definitely non-obvious.
> 
> It's been discussed before, but nobody stepped up to address this
> issue. In the end I decided to just accept media patches that fix this
> in the drivers rather than waiting for some mythical future core fix.
> 
> Nor do I think that you can just 'fix' pm_runtime_get_sync, since
> then you will get cases where pm_runtime_put is called once too
> often.

Someone could easily add a helper function.  The only complication is
thinking of the correct name.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
