Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F8F2477B0
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 21:52:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9BA2C864F3;
	Mon, 17 Aug 2020 19:52:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o-hqds7RfSUN; Mon, 17 Aug 2020 19:52:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A1CA863F1;
	Mon, 17 Aug 2020 19:52:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0F5ED1BF28F
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 19:52:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F1C6D8642E
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 19:52:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G92FF5MeQPUF for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 19:52:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0D2B6863F1
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 19:52:09 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id y206so8730033pfb.10
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 12:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=RbvZkl+VFld3/SGn1wsxs528WtxH0u9kRcCVuGkaSCQ=;
 b=eDQAepLdsvf97NBV5qq+WRJIVRJOwcaBUEQzU1Umr707qRYx4QRlzqc9mvYICR5qcE
 Z80/4jpH1yQKaDx3y9tFLp0rKDCe3FRG43PteBr3FE3YUZWfrJNvo2A07Qed+3UcCsN9
 s5CQ7VZkr+RU13eLsg7JqtGvKfQe5/QbQEDhtIQ/fQRAevUnbKDsU8sT+8Oir7osRYfi
 OOsn0xCbEKjXVC3GhIKiF3HeFg0qdLk9pHusk8bhReZ06DWjOPvxxBuB+mi4tP7KMeob
 tjizXIrZys9cTA8SqeNNSyIdKevoj4mE09Mdo+ZLYql+H9fjqeZUU2UTeTozMQghU4RV
 02oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RbvZkl+VFld3/SGn1wsxs528WtxH0u9kRcCVuGkaSCQ=;
 b=CY9MBXyckEvkHWAsxJ7J0h8Z9zLYmhZ4IuoCDFBvz9tXtNEehkHOzffd5YN04VrJKh
 UnrTEB604EOowQOvtRasowkA63bEz0bjqCrYYM7zBMqwXJbYlIZedFgqyigCEuf9WnRs
 37YZIj/KP7qW22wIzVLccW4a/RMN/L8fzIoJ8qxkwSEUwyEBhWUEG/AORwZGE0hBd7zl
 DbzCuxg16DBoxZQ1afUhuqoBV0Ekrj5L2StmjgMdcwq53mqdOl9J7fr6ZpkKzPOqpbG9
 fg0MTI1lbqRGvBVFO/Q3ScYLZEaQtGvjhQA3j2bYigenNtffCUl9uWiFt1WN1OzjW06g
 rcEA==
X-Gm-Message-State: AOAM5308OTc64xcPZ2ZwCVDqBrMOEacE/CI447y3ifswx1A+TQIPbCLo
 RfCvhctrUVprMS63xHCdDDTwJ5alShQEGuq6gSg=
X-Google-Smtp-Source: ABdhPJzFEoQnnFd028Ohjr70q+LK0HAhTgnBlIVjwMDee7dOwAHF3XJdqTZIG2jx09EV04eBp8JK3g==
X-Received: by 2002:aa7:9833:: with SMTP id q19mr5334525pfl.240.1597693478569; 
 Mon, 17 Aug 2020 12:44:38 -0700 (PDT)
Received: from ?IPv6:2605:e000:100e:8c61:bd62:5cef:d7f8:5bff?
 ([2605:e000:100e:8c61:bd62:5cef:d7f8:5bff])
 by smtp.gmail.com with ESMTPSA id y128sm21118788pfy.74.2020.08.17.12.44.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Aug 2020 12:44:37 -0700 (PDT)
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
To: Kees Cook <keescook@chromium.org>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-2-allen.cryptic@gmail.com>
 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
Date: Mon, 17 Aug 2020 12:44:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <202008171228.29E6B3BB@keescook>
Content-Language: en-US
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
Cc: ulf.hansson@linaro.org, linux-atm-general@lists.sourceforge.net,
 manohar.vanga@gmail.com, airlied@linux.ie, Allen Pais <allen.lkml@gmail.com>,
 linux-hyperv@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, James.Bottomley@HansenPartnership.com,
 anton.ivanov@cambridgegreys.com, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de,
 jassisinghbrar@gmail.com, 3chas3@gmail.com, intel-gfx@lists.freedesktop.org,
 kuba@kernel.org, mporter@kernel.crashing.org, jdike@addtoit.com,
 oakad@yahoo.com, s.hauer@pengutronix.de, linux-input@vger.kernel.org,
 linux-um@lists.infradead.org, linux-block@vger.kernel.org, broonie@kernel.org,
 openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, martyn@welchs.me.uk, dmitry.torokhov@gmail.com,
 linux-mmc@vger.kernel.org, sre@kernel.org, linux-spi@vger.kernel.org,
 alex.bou9@gmail.com, Allen Pais <allen.cryptic@gmail.com>,
 stefanr@s5r6.in-berlin.de, daniel@ffwll.ch, linux-ntb@googlegroups.com,
 Romain Perier <romain.perier@gmail.com>, shawnguo@kernel.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 8/17/20 12:29 PM, Kees Cook wrote:
> On Mon, Aug 17, 2020 at 06:56:47AM -0700, Jens Axboe wrote:
>> On 8/17/20 2:15 AM, Allen Pais wrote:
>>> From: Allen Pais <allen.lkml@gmail.com>
>>>
>>> In preparation for unconditionally passing the
>>> struct tasklet_struct pointer to all tasklet
>>> callbacks, switch to using the new tasklet_setup()
>>> and from_tasklet() to pass the tasklet pointer explicitly.
>>
>> Who came up with the idea to add a macro 'from_tasklet' that is just
>> container_of? container_of in the code would be _much_ more readable,
>> and not leave anyone guessing wtf from_tasklet is doing.
>>
>> I'd fix that up now before everything else goes in...
> 
> As I mentioned in the other thread, I think this makes things much more
> readable. It's the same thing that the timer_struct conversion did
> (added a container_of wrapper) to avoid the ever-repeating use of
> typeof(), long lines, etc.

But then it should use a generic name, instead of each sub-system using
some random name that makes people look up exactly what it does. I'm not
huge fan of the container_of() redundancy, but adding private variants
of this doesn't seem like the best way forward. Let's have a generic
helper that does this, and use it everywhere.

-- 
Jens Axboe

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
