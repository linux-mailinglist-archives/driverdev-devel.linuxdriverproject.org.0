Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3041BE89F
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Apr 2020 22:35:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CE35887A33;
	Wed, 29 Apr 2020 20:35:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tR1b69gItY8d; Wed, 29 Apr 2020 20:35:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E669C87913;
	Wed, 29 Apr 2020 20:35:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4AA381BF336
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 20:35:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 424698790A
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 20:35:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zp7n9lkA2vUC for <devel@linuxdriverproject.org>;
 Wed, 29 Apr 2020 20:35:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E366A87913
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 20:35:16 +0000 (UTC)
Received: from mail-qk1-f178.google.com ([209.85.222.178]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1M4K6z-1jTcJ91Oi1-000O0W for <devel@driverdev.osuosl.org>; Wed, 29 Apr
 2020 22:35:14 +0200
Received: by mail-qk1-f178.google.com with SMTP id l78so3495849qke.7
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 13:35:13 -0700 (PDT)
X-Gm-Message-State: AGi0PuZQfkV2hX46mgwrS33CW7PY8Vh8hnbEQcnwCUws2tL+fGg+gmM4
 q7zMx6lPlSjcc3PCWI2Hr9zNcBaO55XWD5i4tb0=
X-Google-Smtp-Source: APiQypKmqhe1J42Dc9NNIPPjb6h2NIdLKVnO4btIHTL91FOrFIt6m/guokM0LsSiDAM68xNngDTmSmEt8UP92RQMJ6c=
X-Received: by 2002:a37:63d0:: with SMTP id x199mr276734qkb.3.1588192512920;
 Wed, 29 Apr 2020 13:35:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200429142119.1735196-1-arnd@arndb.de> <3943343.tW1xmJHsB6@pc-42>
In-Reply-To: <3943343.tW1xmJHsB6@pc-42>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 29 Apr 2020 22:34:56 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1e=-H_b8_GPJW5-uufye5_6OJ6f+ZWErjKPWkxSRSigw@mail.gmail.com>
Message-ID: <CAK8P3a1e=-H_b8_GPJW5-uufye5_6OJ6f+ZWErjKPWkxSRSigw@mail.gmail.com>
Subject: Re: [PATCH] staging: wfx: avoid compiler warning on empty array
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
X-Provags-ID: V03:K1:2Un6tQ1kE5cAI06FmSzfIWMeWWdv1K7y1Im/AeGpeBu/j0Ru4wa
 peT2tLQp3zjh6E6sUF3BTv0H+xQJIqQV4nUP8he422ATku0X33l9BEL5GuKRvM2NcbGxCcs
 GSCWh0+PLPYX54bnCvdiYCYJGaHYvPM7cfGNxCPfoSwn+Adnh9dBULgHRw8EVD61fB0lJE+
 c7Zm0YpQ1WvJZhySKsQcQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:eMcqCTw5M+8=:olt4sIyawbA8TD42IxX1MZ
 1KsDy3JuRR5EiC/fCQI0L+K1BJjv8WcF3pW25ixVaztASKiCQureFQ1Zl+iu+NKR1y8FNbe4l
 h4MDrqKsTN2Bxp1SkldYqVkC8W9Av79XjOMEHO6ZUWgEkj7BaMfinZYhsibv4i4JXN4BxIkSd
 0/1nPoJQqj7+1ZVaIJAAyVUhaRiwcc4nHYz+RyrxLCry/o6ve62wHPykMDA7ptSHcopuAO10G
 jSN9DdFvLdFlZEVqsqm5hju8TUbjoiMf1Q2XUW2djqZOY1XeVvpDw9sOpE/IwqxmedThv0igF
 QyO1/cWEPcH3BaKljSEG0K/tmcP0BDlBvCmivSe9vHz+wQxE+wAxM67/MIM/C959k9wMVXvTe
 Tb9ejYQL0xE5iAXE0fTkzn//gg8Y2YkdkxSQnm8aA6XnA9Kx2lITHMGWXXShVpNLIsEPhduec
 TfFSZ6R7ggahEeKk9isjm7kptMI5t5RbfxLTiWffxuolM/ImGtT/mki3sydo9c+aOz96Nj6e4
 cpiIk9XicD3X9COmppvURGeY7rwd7cBq56wLTFAbbi6L40zYK6ns8BCUAsteCed7x7GyohEv2
 Ioo0TlPv8ZC5waRpA/7dY8oUzOD8MtG3UipyFyPJCVjJB+cFouj3t3Bz1NSb466YgDEhRctlo
 J7/o/UK0WZzVKs+0cDzoWJajkJAqpuP/i9bJ127C81M62Zf25NzmQyJn5UBgazwALIYg/WkNF
 vORJVicMbPtyo62u5+pfF9CKikm8vvTTZ8DAsju26pcX8LQwrS45kNmpWIRsCArV0ZXb/PyjH
 klPMHxnNh6+ImChCa86Qnj3vaeQg1PmFY+Zt6V3KYOP7gjUQO8=
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jules Irenge <jbi.octave@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Apr 29, 2020 at 6:04 PM Jerome Pouiller
<Jerome.Pouiller@silabs.com> wrote:
> On Wednesday 29 April 2020 16:21:09 CEST Arnd Bergmann wrote:
> >
> > -static const struct of_device_id wfx_sdio_of_match[];
> > +static const struct of_device_id wfx_sdio_of_match[] = {
> > +       { .compatible = "silabs,wfx-sdio" },
> > +       { .compatible = "silabs,wf200" },
> > +       { },
> > +};
> > +MODULE_DEVICE_TABLE(of, wfx_sdio_of_match);
>
> I suggest to keep the '#ifdef CONFIG_OF' around this definition. If
> CONFIG_OF is undefined, of_match_ptr() and of_match_node() will be NULL
> and it should compile.

I would generally always go for fewer #ifdef instead of more when the result
is the same. Are you worried about wasting 600 bytes of object code size for
the array on systems that need this driver but not CONFIG_OF, or something
else?

     Arnd
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
