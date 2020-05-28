Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A10781E5FFD
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 May 2020 14:08:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 757EF88310;
	Thu, 28 May 2020 12:08:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XaSKXw6ccU5P; Thu, 28 May 2020 12:08:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E107E882F3;
	Thu, 28 May 2020 12:08:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1B6C71BF2F8
 for <devel@linuxdriverproject.org>; Thu, 28 May 2020 12:08:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 17F2D86C4F
 for <devel@linuxdriverproject.org>; Thu, 28 May 2020 12:08:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u6mD-BUDcazM for <devel@linuxdriverproject.org>;
 Thu, 28 May 2020 12:08:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 29FE786BA3
 for <devel@driverdev.osuosl.org>; Thu, 28 May 2020 12:08:40 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04SC7eHU096738;
 Thu, 28 May 2020 12:08:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=qcIsNVi0wvZGA81ns5t/6g7btQGknY8Bh4yUt78pyTY=;
 b=nUj6qZ87t7W5q+Ao5Jo7TVPU46xmgqP6A3Ok65J42ozQFt6pjh9M4ga4GcvvdWU/b1s9
 aSnmlyOLDlYkALrr6oR5HbtiPheeCXP+XSwpBjZ8VfsV5e84MYQ7ne83NWcz3yLYpa3U
 YTIgdHYuF+fz00IC1FLnucuY+zvixh/xJRjWGcbpYEPa9MogmECfL598HG2NfbIwzvXH
 MpW8q1abR/2TSDQ5zwmavuUXgJMm4IfJRwIg+bcpUST4xYAwmjvFJPt48gP4xaFYze/n
 Bju3SPGT01K5bNGr059rgkFoKQkSMfUzOQ7FK3/SHa752kCBjxTnkk9J0/Cy9N4GV5uR IA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 316u8r4kjk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 28 May 2020 12:08:39 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04SC38KS124411;
 Thu, 28 May 2020 12:08:38 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 317ddsnvd6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 28 May 2020 12:08:38 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04SC8TXf014768;
 Thu, 28 May 2020 12:08:29 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 28 May 2020 05:08:28 -0700
Date: Thu, 28 May 2020 15:08:18 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: Re: [PATCH] media: staging: tegra-vde: fix runtime pm imbalance
 on error
Message-ID: <20200528120818.GO22511@kadam>
References: <20200520095148.10995-1-dinghao.liu@zju.edu.cn>
 <2b5d64f5-825f-c081-5d03-02655c2d9491@gmail.com>
 <20200520150230.GC30374@kadam>
 <2a46539d.b977f.1723553aa81.Coremail.dinghao.liu@zju.edu.cn>
 <20200521091505.GF30374@kadam>
 <CAJZ5v0irLayBUPRWNT1tcZivz9inS1YbUgGj5WXvucLKKwRQAw@mail.gmail.com>
 <20200521173901.GA22310@kadam> <20200522131031.GL2163848@ulmo>
 <20200522132318.GM30374@kadam> <20200522144312.GA2374603@ulmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522144312.GA2374603@ulmo>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9634
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 bulkscore=0 mlxscore=0
 phishscore=0 adultscore=0 suspectscore=21 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005280084
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9634
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0
 priorityscore=1501 spamscore=0 cotscore=-2147483648 suspectscore=21
 phishscore=0 clxscore=1015 mlxlogscore=999 bulkscore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005280084
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
Cc: devel@driverdev.osuosl.org, Len Brown <len.brown@intel.com>,
 dinghao.liu@zju.edu.cn, Linux PM <linux-pm@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Kangjie Lu <kjlu@umn.edu>,
 Pavel Machek <pavel@ucw.cz>, linux-tegra <linux-tegra@vger.kernel.org>,
 Dmitry Osipenko <digetx@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 22, 2020 at 04:43:12PM +0200, Thierry Reding wrote:
> On Fri, May 22, 2020 at 04:23:18PM +0300, Dan Carpenter wrote:
> > On Fri, May 22, 2020 at 03:10:31PM +0200, Thierry Reding wrote:
> > > On Thu, May 21, 2020 at 08:39:02PM +0300, Dan Carpenter wrote:
> > > > On Thu, May 21, 2020 at 05:22:05PM +0200, Rafael J. Wysocki wrote:
> > > > > On Thu, May 21, 2020 at 11:15 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > > > > >
> > > > > > On Thu, May 21, 2020 at 11:42:55AM +0800, dinghao.liu@zju.edu.cn wrote:
> > > > > > > Hi, Dan,
> > > > > > >
> > > > > > > I agree the best solution is to fix __pm_runtime_resume(). But there are also
> > > > > > > many cases that assume pm_runtime_get_sync() will change PM usage
> > > > > > > counter on error. According to my static analysis results, the number of these
> > > > > > > "right" cases are larger. Adjusting __pm_runtime_resume() directly will introduce
> > > > > > > more new bugs. Therefore I think we should resolve the "bug" cases individually.
> > > > > > >
> > > > > >
> > > > > > That's why I was saying that we may need to introduce a new replacement
> > > > > > function for pm_runtime_get_sync() that works as expected.
> > > > > >
> > > > > > There is no reason why we have to live with the old behavior.
> > > > > 
> > > > > What exactly do you mean by "the old behavior"?
> > > > 
> > > > I'm suggesting we leave pm_runtime_get_sync() alone but we add a new
> > > > function which called pm_runtime_get_sync_resume() which does something
> > > > like this:
> > > > 
> > > > static inline int pm_runtime_get_sync_resume(struct device *dev)
> > > > {
> > > > 	int ret;
> > > > 
> > > > 	ret = __pm_runtime_resume(dev, RPM_GET_PUT);
> > > > 	if (ret < 0) {
> > > > 		pm_runtime_put(dev);
> > > > 		return ret;
> > > > 	}
> > > > 	return 0;
> > > > }
> > > > 
> > > > I'm not sure if pm_runtime_put() is the correct thing to do?  The other
> > > > thing is that this always returns zero on success.  I don't know that
> > > > drivers ever care to differentiate between one and zero returns.
> > > > 
> > > > Then if any of the caller expect that behavior we update them to use the
> > > > new function.
> > > 
> > > Does that really have many benefits, though? I understand that this
> > > would perhaps be easier to use because it is more in line with how other
> > > functions operate. On the other hand, in some cases you may want to call
> > > a different version of pm_runtime_put() on failure, as discussed in
> > > other threads.
> > 
> > I wasn't CC'd on the other threads so I don't know.  :/
> 
> It was actually earlier in this thread, see here for example:
> 
> 	http://patchwork.ozlabs.org/project/linux-tegra/patch/20200520095148.10995-1-dinghao.liu@zju.edu.cn/#2438776

I'm not seeing what you're talking about.

The only thing I see in this thread is that we don't want to call
pm_runtime_mark_last_busy(dev) which updates the last_busy time that is
used for autosuspend.

The other thing that was discussed was pm_runtime_put_noidle() vs
pm_runtime_put_autosuspend().  "The pm_runtime_put_noidle() should have
the same effect as yours variant".  So apparently they are equivalent
in this situation.  How should we choose one vs the other?

I'm not trying to be obtuse.  I understand that probably if I worked in
PM then I wouldn't need documentation...  :/

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
