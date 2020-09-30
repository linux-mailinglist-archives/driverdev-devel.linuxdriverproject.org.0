Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 222A427E67C
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Sep 2020 12:23:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F114020445;
	Wed, 30 Sep 2020 10:23:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id trGOKUexaYNV; Wed, 30 Sep 2020 10:23:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 02BB220489;
	Wed, 30 Sep 2020 10:23:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BD6571BF36A
 for <devel@linuxdriverproject.org>; Wed, 30 Sep 2020 10:22:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B98C58512E
 for <devel@linuxdriverproject.org>; Wed, 30 Sep 2020 10:22:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 26NZ28vdfjXm for <devel@linuxdriverproject.org>;
 Wed, 30 Sep 2020 10:22:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 572A485124
 for <devel@driverdev.osuosl.org>; Wed, 30 Sep 2020 10:22:57 +0000 (UTC)
Received: from mail-qk1-f181.google.com ([209.85.222.181]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mgvj1-1ktqjb3ZXh-00hPwB for <devel@driverdev.osuosl.org>; Wed, 30 Sep
 2020 12:22:55 +0200
Received: by mail-qk1-f181.google.com with SMTP id v123so806680qkd.9
 for <devel@driverdev.osuosl.org>; Wed, 30 Sep 2020 03:22:54 -0700 (PDT)
X-Gm-Message-State: AOAM532T/vf9mjx5ogcOcdBZt2tvnufUcYlPoapIOgtevqwLVrKsiti0
 WVFqELZQRrs65N83hfxEbfCntUS9qp3yKIRKHEE=
X-Google-Smtp-Source: ABdhPJzbp1ree7OnLK3wvVArvoiDQadBs0pygzava7j+b3qT05utAOWO3J1rLFwcXA64KjCr9Zap1oKqinCzol0q+MY=
X-Received: by 2002:a37:5d8:: with SMTP id 207mr1859009qkf.352.1601461373212; 
 Wed, 30 Sep 2020 03:22:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200930090238.GA621698@mwanda>
In-Reply-To: <20200930090238.GA621698@mwanda>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 30 Sep 2020 12:22:37 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1m3kaGK17A2ADgA7b9i7GeEYhX=xVoU=Yet8_T93Q2JA@mail.gmail.com>
Message-ID: <CAK8P3a1m3kaGK17A2ADgA7b9i7GeEYhX=xVoU=Yet8_T93Q2JA@mail.gmail.com>
Subject: Re: [PATCH] staging: vchiq: silence an uninitialized variable warning
To: Dan Carpenter <dan.carpenter@oracle.com>
X-Provags-ID: V03:K1:lSYo0OZqXLyz/DQW2pvj7suy6THUBY5LGDjG8/qxno/c0HzVR64
 9dlANjFgbSf4CFLehlEeKfbGDG8MSuh/fXNO5FILSuMXZw8qn2itbCGY4WfS/y4h72t06b5
 RVDtYAUEphKH1/Zw3MIWYLXdfVQ3gIHKjXfslE+qVljx6NgzgQ9DsEfaM2L0MYi8y0ArSgP
 iZOZlNwrgmE2EY17tMMIg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Ycx1HRCb/Wc=:pGkIAaNX/eiTvAAn26GeNx
 t9sp8pYQY3DS7fdaZvkVAdK+rCF6FsjjkEkMCeol1svGUZvaAPhaCGYdvEBNZ+9C8+YOeB9xO
 kR58evvB+0hMRlNwbh6sMYU5oa+H6zmQJoEPs0XqsLBso7/c5jQNO7HZTRVA0kYSfuK3+mD5G
 xrpaWTo4fXvjbQ8z+gly2HrQahTlOkFSZ3q4lPmeqV89CcSYDAOhdFLj/R1nKclLYfrlKNeM6
 NWLTC5KmY4IkOGWfvFyHiZHQcyszKC3gMcDEtwRmErE0Z+AG5K5RuHvjK4oQ0M1kTBELpS8Z6
 VVg5Xue465I8IGzV2texv6+0GjxB2A8ZZw+SBggcU/6o7jrZBGOd2zJdK6JF+7p3n99UleMA/
 oNbJatEuqxEk8bngFlxJxBUe+SM+tyhAh6rx0QPkbTn7jY49t0N+XQzH8acoXijSF+eNcQu05
 UlKge5inaSMpymamPqRAKQLs2hutlmjoQRvhVWxMyK/kZ7octPwWAZViVKbFwZAnsfOUp3N0s
 OPNKpOCjkdBZcA/wnrniPHcDIW+JxVtsVzMsGt8tw1KSCtTh5vW6Qr8qRAmX8dOkdT3XGtoIy
 aS6cZ33yskCiOt8qg3z+VEJovE40uWj+nocDAViXBQgHnDlM6gzqnYa/tGDt9WCVEOSWp5FgB
 FagH7Q4hzWEDXEkBuHIrdS5nYZ9tG12FBJhiPdiRxOMXY+ABhCwZtHdgXcKnts/G5B8zmIth7
 Y2sQ5Nkh8fRNeIqDkZRoNcK0pZvI75VrwF8sl1u0ovO5r9/iCedgGkO9sbGbh3UyvQdvC5PM9
 YmX7zK6obTRgCOPkVr9BqkncmKqmQCQXikZImIUpjGv8GYzj3MvQAj+/yi9sBAffxyMdx3Msm
 M4qwMo9Dh/HNeBGjCogRkhP47Kp1DLudt7s4gfL+T6Rgi0a/yW8k+usK4YGbCQjS2eyQG5mrR
 1NR2vhbP8XHOL3CD9kIgbabooXxWyZqXvCGtl6iaHWELoqw54tlEz
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 driverdevel <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Marcelo Diop-Gonzalez <marcgonzalez@google.com>,
 kernel-janitors@vger.kernel.org,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Jamal Shareef <jamal.k.shareef@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 30, 2020 at 11:02 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> Smatch complains that "userdata" can be passed to vchiq_bulk_transfer()
> without being initialized.  Smatch is correct, however, in that
> situation the "userdata" is not used so it doesn't cause a problem.
> Passing an uninitialized variable will trigger a UBSan warning at
> runtime so this warning is worth silencing by setting "userdata" to
> NULL.
>
> Fixes: a4367cd2b231 ("staging: vchiq: convert compat bulk transfer")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

The change looks fine, but I wonder if it's actually worse and the
uninitialized pointer can end up getting copied back to user space
in the completion.

In either case, thanks for the fix!

Acked-by: Arnd Bergmann <arnd@arndb.de>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
