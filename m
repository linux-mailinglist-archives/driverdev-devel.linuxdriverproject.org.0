Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CE5249EE8
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Aug 2020 15:01:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 098C78543E;
	Wed, 19 Aug 2020 13:01:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z83tO_FK589L; Wed, 19 Aug 2020 13:01:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7B26A8513B;
	Wed, 19 Aug 2020 13:01:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B58B71BF33D
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 13:01:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B10198543E
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 13:01:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DXH6TvIYCN6m for <devel@linuxdriverproject.org>;
 Wed, 19 Aug 2020 13:00:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6D4298526D
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 13:00:59 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id d4so1082446pjx.5
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 06:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=qNJVZUa8vOnjh3Y4FbI7cu96rnOZczrpWszoc4OM35E=;
 b=ZtDUAentzHDOfXLt1WNpX0PqLZgZi3vnfEc6anllVjv7Z89UoKoCCMUiljAdsTAGBL
 DEVHOWuWzMZeIuJcHwUlptWZjkCaOp1ZUKAoSs/2jyyTPejnx1zCbjPUY7C9na+Ftk+x
 wpw/pPjI4UYNDosNdy4j7LcDWUJhwNxLapyy4W7f1U00+fT6jVYw1uO8CMpHCStxGd8w
 JLOisGYqnJmeY5ie8I+x4A4vKZtwoQ6PsaOc8UAPD7eTAFlJwORflpx8o8EPJZR8cuSG
 1j977OWh0YEI5r2DXie/ItwJ0iuosRobp25OObO0Ld6mXVix+wRg8r73enQ5lMOcXAoG
 tjpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qNJVZUa8vOnjh3Y4FbI7cu96rnOZczrpWszoc4OM35E=;
 b=p+o1yZSkLSMahQjLoefVKrESXult/nFib7YX/1SxRD97+/tL3Kh+Frw64DTBDOOBOi
 r2H9hz0OI2iS/ML4Tq1p9pjIFKAmWSYNq6t7p0bwxSz8xntpqN+d0Aps4Z+7jyYG0rdp
 WrK88tpkuOD0xXR/4pFWQrZZrRbX5BHbRLm0xUO3Ck2BBV3swcLr/qF/WwQUqE+jC05m
 q+vHAKP2MtSKrOIpEDeVUNJCVxsOV4bHQf7cUFaD/QvKupU5OpqY4vnSgvVezwCmlI37
 /rQRrfmMxT1SWuOMn5+Z1sTQ7Le2knjC8QFw7h5rX9JPBC11RN4Xcg9F7b9xv+8gdoyV
 oMHA==
X-Gm-Message-State: AOAM532UKoTjMjealWGS6XxLURcEe88UEoMOwpnPzN3txAmi2MJ/72nm
 m0DDKB3BE1A9AxmzArzR9YHocg==
X-Google-Smtp-Source: ABdhPJwcWyLwqgVIDq5QVfeKWIJZ1zweeStVncOtMpfxCFFFEuEh0sSa6pW/Ah5NefbMm4I9GwEzLw==
X-Received: by 2002:a17:90b:285:: with SMTP id
 az5mr3983315pjb.118.1597842058708; 
 Wed, 19 Aug 2020 06:00:58 -0700 (PDT)
Received: from [192.168.1.182] ([66.219.217.173])
 by smtp.gmail.com with ESMTPSA id d23sm20502027pgm.11.2020.08.19.06.00.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Aug 2020 06:00:58 -0700 (PDT)
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
 Kees Cook <keescook@chromium.org>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-2-allen.cryptic@gmail.com>
 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook>
 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
Date: Wed, 19 Aug 2020 07:00:53 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1597780833.3978.3.camel@HansenPartnership.com>
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
 linux-kernel@vger.kernel.org, anton.ivanov@cambridgegreys.com,
 devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net, maximlevitsky@gmail.com, richard@nod.at,
 deller@gmx.de, jassisinghbrar@gmail.com, 3chas3@gmail.com,
 intel-gfx@lists.freedesktop.org, kuba@kernel.org, mporter@kernel.crashing.org,
 jdike@addtoit.com, oakad@yahoo.com, s.hauer@pengutronix.de,
 linux-input@vger.kernel.org, linux-um@lists.infradead.org,
 linux-block@vger.kernel.org, broonie@kernel.org,
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

On 8/18/20 1:00 PM, James Bottomley wrote:
> On Mon, 2020-08-17 at 13:02 -0700, Jens Axboe wrote:
>> On 8/17/20 12:48 PM, Kees Cook wrote:
>>> On Mon, Aug 17, 2020 at 12:44:34PM -0700, Jens Axboe wrote:
>>>> On 8/17/20 12:29 PM, Kees Cook wrote:
>>>>> On Mon, Aug 17, 2020 at 06:56:47AM -0700, Jens Axboe wrote:
>>>>>> On 8/17/20 2:15 AM, Allen Pais wrote:
>>>>>>> From: Allen Pais <allen.lkml@gmail.com>
>>>>>>>
>>>>>>> In preparation for unconditionally passing the
>>>>>>> struct tasklet_struct pointer to all tasklet
>>>>>>> callbacks, switch to using the new tasklet_setup()
>>>>>>> and from_tasklet() to pass the tasklet pointer explicitly.
>>>>>>
>>>>>> Who came up with the idea to add a macro 'from_tasklet' that
>>>>>> is just container_of? container_of in the code would be
>>>>>> _much_ more readable, and not leave anyone guessing wtf
>>>>>> from_tasklet is doing.
>>>>>>
>>>>>> I'd fix that up now before everything else goes in...
>>>>>
>>>>> As I mentioned in the other thread, I think this makes things
>>>>> much more readable. It's the same thing that the timer_struct
>>>>> conversion did (added a container_of wrapper) to avoid the
>>>>> ever-repeating use of typeof(), long lines, etc.
>>>>
>>>> But then it should use a generic name, instead of each sub-system 
>>>> using some random name that makes people look up exactly what it
>>>> does. I'm not huge fan of the container_of() redundancy, but
>>>> adding private variants of this doesn't seem like the best way
>>>> forward. Let's have a generic helper that does this, and use it
>>>> everywhere.
>>>
>>> I'm open to suggestions, but as things stand, these kinds of
>>> treewide
>>
>> On naming? Implementation is just as it stands, from_tasklet() is
>> totally generic which is why I objected to it. from_member()? Not
>> great with naming... But I can see this going further and then we'll
>> suddenly have tons of these. It's not good for readability.
> 
> Since both threads seem to have petered out, let me suggest in
> kernel.h:
> 
> #define cast_out(ptr, container, member) \
> 	container_of(ptr, typeof(*container), member)
> 
> It does what you want, the argument order is the same as container_of
> with the only difference being you name the containing structure
> instead of having to specify its type.

Not to incessantly bike shed on the naming, but I don't like cast_out,
it's not very descriptive. And it has connotations of getting rid of
something, which isn't really true.

FWIW, I like the from_ part of the original naming, as it has some clues
as to what is being done here. Why not just from_container()? That
should immediately tell people what it does without having to look up
the implementation, even before this becomes a part of the accepted
coding norm.

-- 
Jens Axboe

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
