Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACC41E774F
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 May 2020 09:45:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CD27885E7D;
	Fri, 29 May 2020 07:45:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BVorvaTwg-up; Fri, 29 May 2020 07:45:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8206085ABF;
	Fri, 29 May 2020 07:45:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 452901BF366
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 07:45:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 417AB8838C
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 07:45:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rAmNzlF1fdmf for <devel@linuxdriverproject.org>;
 Fri, 29 May 2020 07:45:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 92C788838B
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 07:45:26 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04T7gOJk052517;
 Fri, 29 May 2020 07:45:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=/zyDyVC68d9YZ6KEmiarS9O/AvAUU4/O8BpkManDjZc=;
 b=PB4EO8JeymwCk49nnqmL6gJudVGRM82/M5nb4G1VwWeLcn06D9J+kWZStry9uaGUIuf+
 0OooNg6aZA+U21zq6b1TzqMv8l5zCm6K/WFbBw09SJ5SBaGMYXP2KCBMLjqawYlKjCft
 X57W3hfIyc4Po0qHTEaa04qicTSIy33HBUaLjeA4qAz2MmKW4jvhlclf4nTs7KZm76Dv
 Ld0uBL+bFWfVlaZzBynCjcBOd/gwIz0YpqdowD+c/sTT/gStii8MM1rDacmCYUH2JvU4
 AKwR3EB5orS/9bgQBfXOA6fkoNRtlQxN5+lGYXJ7IlkUes0PsTz/s3Vi6IHp4bCcfhQB xA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 318xbk8y1x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 29 May 2020 07:45:25 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04T7d85x051707;
 Fri, 29 May 2020 07:45:24 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 317ddu2mxj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 29 May 2020 07:45:24 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04T7jNAM022993;
 Fri, 29 May 2020 07:45:23 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 29 May 2020 00:45:23 -0700
Date: Fri, 29 May 2020 10:45:16 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: John Hubbard <jhubbard@nvidia.com>
Subject: Re: [PATCH] staging: gasket: Convert get_user_pages*() -->
 pin_user_pages*()
Message-ID: <20200529074516.GL30374@kadam>
References: <1590613362-27495-1-git-send-email-jrdr.linux@gmail.com>
 <20200528110408.GJ30374@kadam>
 <CAFqt6zaKWBQTy9XfvxwVAvzGS+gz9Qv1gL8Bv1VxLq+THYf+Aw@mail.gmail.com>
 <CAFqt6zbtg0NWbAnDGPC0ZddEiTeohz=8JN+S_KxqM0bnnvar3g@mail.gmail.com>
 <52f75ec4-a2a0-f979-a3b9-ef016b88907c@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52f75ec4-a2a0-f979-a3b9-ef016b88907c@nvidia.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9635
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 bulkscore=0 mlxscore=0
 phishscore=0 adultscore=0 suspectscore=0 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005290060
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9635
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0 mlxscore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 cotscore=-2147483648
 suspectscore=0 bulkscore=0 clxscore=1015 impostorscore=0 malwarescore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005290060
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Springer <rspringer@google.com>, Souptick Joarder <jrdr.linux@gmail.com>,
 Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 29, 2020 at 12:38:20AM -0700, John Hubbard wrote:
> On 2020-05-28 23:27, Souptick Joarder wrote:
> > On Fri, May 29, 2020 at 11:46 AM Souptick Joarder <jrdr.linux@gmail.com> wrote:
> > > 
> > > On Thu, May 28, 2020 at 4:34 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > > > 
> > > > On Thu, May 28, 2020 at 02:32:42AM +0530, Souptick Joarder wrote:
> > > > > This code was using get_user_pages_fast(), in a "Case 2" scenario
> > > > > (DMA/RDMA), using the categorization from [1]. That means that it's
> > > > > time to convert the get_user_pages_fast() + put_page() calls to
> > > > > pin_user_pages_fast() + unpin_user_page() calls.
> > > > 
> > > > You are saying that the page is used for DIO and not DMA, but it sure
> > > > looks to me like it is used for DMA.
> > > 
> > > No, I was referring to "Case 2" scenario in change log which means  it is
> > > used for DMA, not DIO.
> 
> Hi,
> 
> Dan, I also uncertain as to how you read this as referring to DIO. Case 2 is
> DMA or RDMA, and in fact the proposed commit log says both of those things:
> Case 2 and DMA/RDMA. I don't see "DIO" anywhere here...

I thought he meant that the original code was appropriate for DMA and he
was fixing it.  :P

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
