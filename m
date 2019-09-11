Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DADAFEAC
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Sep 2019 16:23:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A86832044D;
	Wed, 11 Sep 2019 14:23:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xXpCzmk9QK0L; Wed, 11 Sep 2019 14:23:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BA70C2046C;
	Wed, 11 Sep 2019 14:23:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5AACC1BF295
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 14:23:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5068585F35
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 14:23:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZOeIgrkf_yCl for <devel@linuxdriverproject.org>;
 Wed, 11 Sep 2019 14:23:00 +0000 (UTC)
X-Greylist: delayed 00:05:14 by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 18D5F85F31
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 14:22:59 +0000 (UTC)
Received: from [192.168.178.51] ([109.104.36.78]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MD9Kj-1hz0sQ1dR3-0099ZC; Wed, 11 Sep 2019 16:17:27 +0200
Subject: Re: [PATCH] staging: vhciq_core: replace snprintf with scnprintf
To: Rohit Sarkar <rohitsarkar5398@gmail.com>, Eric Anholt <eric@anholt.net>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20190911135112.GA5569@SARKAR>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <7bf3c74d-e690-1ef1-dd74-ac98667e42ef@i2se.com>
Date: Wed, 11 Sep 2019 16:17:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190911135112.GA5569@SARKAR>
Content-Language: en-US
X-Provags-ID: V03:K1:uA7A4z8RtLe6psHsb2WmUkXx0EoIQhDKSOGnfwLT+4O0T9y7af7
 0YhigydzRBiLVJDONmGQmX1yst8TkCsS5Mp+aIWcwJfTEpepijrLHxd6a5hFdyCDjryOp3T
 4PMjI2bqqQMKR3ycFPeEuDCcUSqiP8X9nTQEA9TbhYIvAWBP3S3BDnEpE34t3r8elKw4EUc
 127dIrcGjezBVfjhKBE0g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:UFZGbex87RI=:OkPuTziDeN8q/VXJm/I4XR
 4mF0fKVP62SP9lyEF8LJZE1RteKKP7Ytfu4MlYA9pEosQ9bWHKmjwGg4F4uJxIzYnJUMIrnKA
 D1XC3OqeNs1y9o2x9tmzhRIdFyeHnMtNnv1PnccqRlpo/qUXwjUsIUMw7+H2z051wrwcrDlDt
 IVYf6+DKlkYrHdj8kFgyjHB6UmLw91DHXr1ax1+5npKBnUqdxhFI6JJD2XiA+M8vVRHH3xfi+
 Z603PiVzDCAajh/5ykCysUc4T5+mPhqhk4efykMEaCwdMDUR0Q4pE3oCONolyqTisHE9iy14g
 la2kALyX3bfac41ZES6jylR5j1l+15FVaxzhppxN8nKSlYJLKqKGJ7dwCXYAsbctzinSyt4wa
 aUeK0HC446XGwzeSkYqO6DSPqA+pcNbAkbNQOwlbVZVgsMLHRqw2yrvwUzCJksEa4EIkpGG7z
 sAR3awIDqPqJbFPIrbrHtWi/aAWbDJZZSJ/5+XgeK6jv0wO4wRW33xvE0PZ6Y8tZNH8o+C+8Z
 MvMb1tG52kYJcAfHtoH3eLBW+Hpcq8g4j1KX3dT0toYA/vXF+jIQgBsVGvZPIkvbVG69Siq8O
 erhevHpop/ARdLSMI9qPLleJvqzGoLZUl4T2dFRyVrFnoEPC9HEOSA1NLEmhf68olq678Vu67
 OSE5fz5YhovZ0o6zMqJuMIVUb6LIgaXaI3V0s0eUhdPZo8NGdzF3yWPL2Z1/fimq//YFPUg6e
 LP17uRYCu3xdGzSfSR9JPxSjhYq4ty9nG+RxNaWy1aE0OuRBnOTb97n6kMxb0dbKg0yMyJAV5
 dFYT1e/NLbSnCe4HtvZfit3D/wg+ByTC4ORSsmWCo9bncx/g6ac9waFNDG0cquABM3hhIajzg
 ihk3zmjLjgL1Uh2oDY1ODbdgAJUDJ8DV9L8wXQrY0=
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
Reply-To: Stefan Wahren <wahrenst@gmx.net>
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org,
 =?UTF-8?Q?Tobias_B=c3=bcttner?= <tobias.buettner@fau.de>,
 linux-rpi-kernel@lists.infradead.org, Dominic Braun <inf.braun@fau.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Rohit,

On 11.09.19 15:51, Rohit Sarkar wrote:
> When the number of bytes to be printed exceeds the limit snprintf
> returns the number of bytes that would have been printed (if there was
> no truncation). This might cause issues, hence use scnprintf which
> returns the actual number of bytes printed to buffer always
>
> Signed-off-by: Rohit Sarkar <rohitsarkar5398@gmail.com>
thanks for your patch. Did you test your change on the Raspberry Pi?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
