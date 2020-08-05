Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C0423CA4B
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Aug 2020 13:34:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CCA5C2052B;
	Wed,  5 Aug 2020 11:34:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 78DuKx+wi2w6; Wed,  5 Aug 2020 11:34:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 96F3F2049C;
	Wed,  5 Aug 2020 11:34:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 563D11BF33A
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 11:34:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 47A162049C
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 11:34:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fn3lzO40OyMk for <devel@linuxdriverproject.org>;
 Wed,  5 Aug 2020 11:34:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id F290D20021
 for <devel@driverdev.osuosl.org>; Wed,  5 Aug 2020 11:34:12 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 075BS1Fh028001;
 Wed, 5 Aug 2020 11:34:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=7pIsLGqMjIgL87suiIaeNB75q2taIqw/jMzR5b9gh7E=;
 b=gVqWoW0GUND4SXsTdTj42hKtT0Igc/eqPZHKXy9+Scve/pr7PhCMgzFgeQI5cpBodBpv
 9kDGVgtNjb5MQCGBVcPm1yOR16evziikZafORHUebh4NXuNDy/zcWyx45GA72fWeMtkP
 80mlyaQRUR+Bvz1kVB6AB7NI+8F/1o5vrLQl5IkMQkb9SPt4pnU3s4irs7nb2eP7jjw4
 SDHe2I5M0ATO2MW3KMNrJqQg/Jyjc8FFepZotFa3aK5K/TGExTwZ0ThJ2W2Iw1aG3hTg
 NTgV/wRElZ0Ils+pFAPXe0vnrNxKtp43x+54g8EJWhWxn/otPhiQDpQYgfKEvJvvKsad Ow== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 32qnd41rw0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 05 Aug 2020 11:34:08 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 075BSswc034976;
 Wed, 5 Aug 2020 11:34:08 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 32pdnt2jk4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 05 Aug 2020 11:34:07 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 075BY3U2012723;
 Wed, 5 Aug 2020 11:34:03 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 05 Aug 2020 04:34:02 -0700
Date: Wed, 5 Aug 2020 14:33:51 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v3] Provide USF for the portable equipment.
Message-ID: <20200805113351.GE1793@kadam>
References: <cover.1596464894.git.yangdongdong@xiaomi.com>
 <20200804054728.ojudxu5fmd54lar5@vireshk-mac-ubuntu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200804054728.ojudxu5fmd54lar5@vireshk-mac-ubuntu>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9703
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0 mlxscore=0
 bulkscore=0 adultscore=0 phishscore=0 malwarescore=0 mlxlogscore=987
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2008050096
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9703
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 clxscore=1015 mlxscore=0
 priorityscore=1501 mlxlogscore=999 malwarescore=0 adultscore=0
 lowpriorityscore=0 spamscore=0 bulkscore=0 phishscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2008050096
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
Cc: juri.lelli@redhat.com, peterz@infradead.org, bsegall@google.com,
 gulinghua@xiaomi.com, duhui@xiaomi.com, taojun@xiaomi.com,
 devel@driverdev.osuosl.org, vincent.guittot@linaro.org, tanggeliang@xiaomi.com,
 rocking@linux.alibaba.com, mingo@redhat.com, yangdongdong@xiaomi.com,
 mgorman@suse.de, linux-pm@vger.kernel.org, rostedt@goodmis.org,
 fengwei@xiaomi.com, Dongdong Yang <contribute.kernel@gmail.com>,
 dietmar.eggemann@arm.com, huangqiwu@xiaomi.com, gregkh@linuxfoundation.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, zhangguoquan@xiaomi.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 04, 2020 at 11:17:28AM +0530, Viresh Kumar wrote:
> Sending updated patchset for this isn't going to help you my friend. You need
> people (maintainers) to agree on the idea here first.

It doesn't take much work to make the code look nice.  Writing pretty
code is always a good idea because then people assume you know what
you're doing.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
