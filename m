Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DF12A2D19
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Nov 2020 15:39:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0FC8286B2A;
	Mon,  2 Nov 2020 14:39:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sXejfrbY57Ve; Mon,  2 Nov 2020 14:39:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2BBA2868EF;
	Mon,  2 Nov 2020 14:39:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 352951BF3AA
 for <devel@linuxdriverproject.org>; Mon,  2 Nov 2020 14:39:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2BBA286AA3
 for <devel@linuxdriverproject.org>; Mon,  2 Nov 2020 14:39:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XmhhX-k6sucv for <devel@linuxdriverproject.org>;
 Mon,  2 Nov 2020 14:39:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 579EC868D6
 for <devel@driverdev.osuosl.org>; Mon,  2 Nov 2020 14:39:09 +0000 (UTC)
Received: from DGGEMM403-HUB.china.huawei.com (unknown [172.30.72.57])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4CPwXR0wPTz50fK;
 Mon,  2 Nov 2020 22:39:03 +0800 (CST)
Received: from dggema707-chm.china.huawei.com (10.3.20.71) by
 DGGEMM403-HUB.china.huawei.com (10.3.20.211) with Microsoft SMTP Server (TLS)
 id 14.3.487.0; Mon, 2 Nov 2020 22:39:05 +0800
Received: from dggema755-chm.china.huawei.com (10.1.198.197) by
 dggema707-chm.china.huawei.com (10.3.20.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1913.5; Mon, 2 Nov 2020 22:39:04 +0800
Received: from dggema755-chm.china.huawei.com ([10.1.198.197]) by
 dggema755-chm.china.huawei.com ([10.1.198.197]) with mapi id 15.01.1913.007;
 Mon, 2 Nov 2020 22:39:05 +0800
From: zhangqilong <zhangqilong3@huawei.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: =?gb2312?B?tPC4tDogW1BBVENIIC1uZXh0XSBtZWRpYTogY2VkcnVzOiBmaXggcmVmZXJl?=
 =?gb2312?B?bmNlIGxlYWsgaW4gY2VkcnVzX3N0YXJ0X3N0cmVhbWluZw==?=
Thread-Topic: [PATCH -next] media: cedrus: fix reference leak in
 cedrus_start_streaming
Thread-Index: AQHWsSMi4cifWjIJq02MoVkfrYwb0am05h5w
Date: Mon, 2 Nov 2020 14:39:04 +0000
Message-ID: <f9f6d225275b466b86591ecfdbffb86f@huawei.com>
References: <20201102142622.140001-1-zhangqilong3@huawei.com>
 <20201102141838.7oicqkeqy7vy3ki3@gilmour.lan>
In-Reply-To: <20201102141838.7oicqkeqy7vy3ki3@gilmour.lan>
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

Hi

> 
> On Mon, Nov 02, 2020 at 10:26:22PM +0800, Zhang Qilong wrote:
> > pm_runtime_get_sync will increment pm usage counter even it failed.
> > Forgetting to pm_runtime_put_noidle will result in reference leak in
> > cedrus_start_streaming. We should fix it.
> >
> > Fixes: d5aecd289babf ("media: cedrus: Implement runtime PM")
> > Signed-off-by: Zhang Qilong <zhangqilong3@huawei.com>
> 
> Shouldn't we fix pm_runtime_get_sync instead then? It seems that most of the
> callers get this wrong, and that's definitely non-obvious.
>

 
I have ever thought to fix fix pm_runtime_get_sync, then I went to read the comment on this function, and found that this is what the author intended to do(comment: The possible return values of this function are the same as for pm_runtime_resume() and the runtime PM usage counter of @dev remains incremented in all cases, even if it returns an error code). On the other hand, I found that the number of callers that getting this right is much bigger than getting this wrong even many callers get wrong. So I submit server patches to fix them as I could.

Thanks, best wish!

Zhang Qilong
 
> Maxime
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
