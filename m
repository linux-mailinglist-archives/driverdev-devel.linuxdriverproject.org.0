Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C69A32A7890
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 09:07:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5AD25857D6;
	Thu,  5 Nov 2020 08:07:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1HQ8JMXU1__C; Thu,  5 Nov 2020 08:07:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0FCB8857C5;
	Thu,  5 Nov 2020 08:07:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BBBC91BF3C4
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 08:07:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B4AE18610F
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 08:07:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e9+PZpC3qCBe for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 08:07:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B7E29860CE
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 08:07:04 +0000 (UTC)
Received: from DGGEMM402-HUB.china.huawei.com (unknown [172.30.72.53])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4CRbhZ0bG5z519F;
 Thu,  5 Nov 2020 16:06:54 +0800 (CST)
Received: from dggema707-chm.china.huawei.com (10.3.20.71) by
 DGGEMM402-HUB.china.huawei.com (10.3.20.210) with Microsoft SMTP Server (TLS)
 id 14.3.487.0; Thu, 5 Nov 2020 16:06:59 +0800
Received: from dggema755-chm.china.huawei.com (10.1.198.197) by
 dggema707-chm.china.huawei.com (10.3.20.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1913.5; Thu, 5 Nov 2020 16:06:58 +0800
Received: from dggema755-chm.china.huawei.com ([10.1.198.197]) by
 dggema755-chm.china.huawei.com ([10.1.198.197]) with mapi id 15.01.1913.007;
 Thu, 5 Nov 2020 16:06:58 +0800
From: zhangqilong <zhangqilong3@huawei.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Maxime Ripard <maxime@cerno.tech>
Subject: =?gb2312?B?tPC4tDogW1BBVENIIC1uZXh0XSBtZWRpYTogY2VkcnVzOiBmaXggcmVmZXJl?=
 =?gb2312?B?bmNlIGxlYWsgaW4gY2VkcnVzX3N0YXJ0X3N0cmVhbWluZw==?=
Thread-Topic: [PATCH -next] media: cedrus: fix reference leak in
 cedrus_start_streaming
Thread-Index: AQHWsSMi4cifWjIJq02MoVkfrYwb0am3VdeAgAHb/4A=
Date: Thu, 5 Nov 2020 08:06:58 +0000
Message-ID: <710479d756b14da591bb2342a1767242@huawei.com>
References: <20201102142622.140001-1-zhangqilong3@huawei.com>
 <20201102141838.7oicqkeqy7vy3ki3@gilmour.lan>
 <2eb14a6d-4680-1527-0985-fd371e3ba2e8@xs4all.nl>
In-Reply-To: <2eb14a6d-4680-1527-0985-fd371e3ba2e8@xs4all.nl>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.174.179.28]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "paul.kocialkowski@bootlin.com" <paul.kocialkowski@bootlin.com>,
 "wens@csie.org" <wens@csie.org>, "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> On 02/11/2020 15:18, Maxime Ripard wrote:
> > On Mon, Nov 02, 2020 at 10:26:22PM +0800, Zhang Qilong wrote:
> >> pm_runtime_get_sync will increment pm usage counter even it failed.
> >> Forgetting to pm_runtime_put_noidle will result in reference leak in
> >> cedrus_start_streaming. We should fix it.
> >>
> >> Fixes: d5aecd289babf ("media: cedrus: Implement runtime PM")
> >> Signed-off-by: Zhang Qilong <zhangqilong3@huawei.com>
> >
> > Shouldn't we fix pm_runtime_get_sync instead then? It seems that most
> > of the callers get this wrong, and that's definitely non-obvious.
> 
> It's been discussed before, but nobody stepped up to address this issue. In the
> end I decided to just accept media patches that fix this in the drivers rather
> than waiting for some mythical future core fix.
> 
> Nor do I think that you can just 'fix' pm_runtime_get_sync, since then you will
> get cases where pm_runtime_put is called once too often.
>

Thanks for your nice comment, if any updates occur about pm_runtime_get_sync, I will pay attention to it.

Thanks, best wish,
Zhang Qilong

> Regards,
> 
> 	Hans
> 
> >
> > Maxime
> >

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
