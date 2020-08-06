Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A87E23D80A
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Aug 2020 10:35:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BF38E8886C;
	Thu,  6 Aug 2020 08:35:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X-AsyNxRysoN; Thu,  6 Aug 2020 08:35:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0D210887EB;
	Thu,  6 Aug 2020 08:35:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 27AFF1BF2FE
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 08:35:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 23A1888299
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 08:35:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wgUqFbXSfZDY for <devel@linuxdriverproject.org>;
 Thu,  6 Aug 2020 08:35:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mailgw01.mediatek.com (unknown [210.61.82.183])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9F34787FD3
 for <devel@driverdev.osuosl.org>; Thu,  6 Aug 2020 08:35:45 +0000 (UTC)
X-UUID: 8cd07223d93d42c7a8277b8efbb372e6-20200806
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=kEwBOGJANDh+F/Q2lyt1F9uF/E41qzsa4ccuEZY+/2Q=; 
 b=BJVzeyvLLW40XKV5p+Gpo9UcR/EDppuPMcKJfXFud4XooNiwfkNqxmQyJwdA/T80iGll5lEbBfnNuyNHemlHqr9y2+NqjmEYYgRHKMk52NG7avCyAg1J7st6Pfqn5ESEJqWMDMiP4a++5qyGPLoe0V6sGU/m4cf+bL6k8uR70Eo=;
X-UUID: 8cd07223d93d42c7a8277b8efbb372e6-20200806
Received: from mtkcas07.mediatek.inc [(172.21.101.84)] by mailgw01.mediatek.com
 (envelope-from <hongxu.zhao@mediatek.com>)
 (Cellopoint E-mail Firewall v4.1.10 Build 0809 with TLS)
 with ESMTP id 683419550; Thu, 06 Aug 2020 16:35:39 +0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 6 Aug 2020 16:35:36 +0800
Received: from [10.15.20.246] (10.15.20.246) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 6 Aug 2020 16:35:35 +0800
Message-ID: <1596702748.6258.3.camel@mbjsdccf07>
Subject: Re: [PATCH] staging: Add Mediatek High Frequency Manager Framework
From: hongxu.zhao <hongxu.zhao@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Thu, 6 Aug 2020 16:32:28 +0800
In-Reply-To: <20200804081126.GA1765831@kroah.com>
References: <20200804075339.9820-1-hongxu.zhao@mediatek.com>
 <20200804081126.GA1765831@kroah.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 9CDE9EA66DEF166AB7602FC000924D7C8661AC13549ABA5FDBF57EE35C7AF2B52000:8
X-MTK: N
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 wsd_upstream@mediatek.com, Weiqi Fu <weiqi.fu@mediatek.com>,
 Hongxu Zhao <hongxu.zhao@mediatek.com>,
 open list <linux-kernel@vger.kernel.org>,
 Cunliang Du <cunliang.du@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Zhen jiang <zhen.jiang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, "moderated list:ARM/Mediatek SoC
 support" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2020-08-04 at 10:11 +0200, Greg Kroah-Hartman wrote:
> On Tue, Aug 04, 2020 at 03:52:49PM +0800, hongxu.zhao wrote:
> > Add a new sensor framework into linux kernel which can support multi client request sensor data.
> > There are the following features:
> >     1.Ringbuffer between manager and client;
> >     2.Kernel space user interface;
> >     3.User space user interface with syscall;
> >     4.Each client hang detect mechanism;
> >     5.Polling timer management in framework no need driver concern;
> >     6.Polling kthread work intergrated into a single kthread
> >       worker to save system resources in framework no need driver concern;
> >     7.Proc file system to show manager device and client details;
> >     8.Compitable with android and widely used in many mediatek platform products;
> > 
> > Change-Id: I6361cdc2d51de50f66eede7df099c4575e7ec473
> 
> Did you not run checkpatch.pl on this?  :)
> 
> No need for change-id here.
> 
> But, most importantly, why is this in drivers/staging?  What keeps it
> from being in the "real" part of the kernel?  I need a TODO file in the
> directory of the driver listing what remains to be done and who is
> responsible for doing this work and reviewing patches.
> 
> Can you resend this with that file added and the Change-id removed?
> 
> Also, why not just use the IIO interface, why are you creating
> yet-another api for sensors?  We already have 2, making a third seems
> like something that guarantees this will never be mergable to the
> correct part of the kernel.
> 
> And finally, /proc/ is not for devices, that is what sysfs is for,
> please use that.

I have modified checkpatch issue, but blocked by ARCH=alpha build error
and I can't reproduce this build error in mediatek environment. I need
spend some time setting up an environment to solve this problem and will
send you the latest patch together after solving the problem of alpha
build error.

Firstly I want keep it in the real part of kernel and I send mail to
community to find the right maintainer, unfortunately, several emails
were not answered.
Secondly I found iio upstream history it also started from staging at
the beginning, maybe staging is the best start until it become mature we
can move it to the real part of kernel.

Actually, we have already assessed IIO subsystem, but the conclusion is
that it doesn't meet our requirement:
1. iio doesn't have sensor manager in kernel space.
2. each driver under the iio subsystem needs to create workqueue or
kthread by itself, waste system resources.
3. iio doesn't have hang detect mechanism to detect polling thread hang.

We need a sensor manager architecture in kernel space to select the best
delay and latency that multi-client(user space or kernel space user)
requested at the same time, and finally dispatch data to each client.
We need lower resource comsumption, each driver can poll data by kthread
work which intergrated into a single kthread worker to save system
resources in framework.
We need detect polling thread hang to decide whether to send data to
him.

About proc, proc is only for High Frequency Manager Framework to show
manager details and client details, is not for device drivers. we
recommend device driver(like test/test_app.c) use sysfs which under High
Frequency Manager Framework.

Thanks.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
