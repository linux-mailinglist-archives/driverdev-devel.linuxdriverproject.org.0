Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C020F68055
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Jul 2019 18:56:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F3DDA86322;
	Sun, 14 Jul 2019 16:56:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m3HXmbGxwIta; Sun, 14 Jul 2019 16:56:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5B87185CBB;
	Sun, 14 Jul 2019 16:56:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E28D51BF40B
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 16:56:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DFAF420005
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 16:56:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pRGF6zk67s5X for <devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 16:56:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.web.de (mout.web.de [212.227.17.11])
 by silver.osuosl.org (Postfix) with ESMTPS id 2CA6E1FEF0
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 16:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1563123334;
 bh=SaBumk2q8ei0h5DNcVQjd3QXgqrn8xhrXVnM5jWFgU0=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=mdJQEThrNNPx/QIHizys8r8q2f6s04Gc64Rq04GUeIzMlNqjG8rKgcoJl+eys/2m+
 YREoLYY2JXSmgfVc0t3RP9RcRTItBcB4RhxgjpNMqx2OrTu15TXOwMS8EgCqNNscFB
 O3zsGc/ihl4guDOTDQ+KgD/NHK1PPqLEbuDmq1U0=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([78.49.159.144]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MEVYz-1hfqAx0M7l-00FlEA; Sun, 14
 Jul 2019 18:55:34 +0200
Subject: Re: [v4] staging: most: Delete an error message for a failed memory
 allocation
To: Keyur Patel <iamkeyur96@gmail.com>, devel@driverdev.osuosl.org,
 kernel-janitors@vger.kernel.org
References: <20190711175055.25157-1-iamkeyur96@gmail.com>
 <20190714164126.3159-1-iamkeyur96@gmail.com>
From: Markus Elfring <Markus.Elfring@web.de>
Openpgp: preference=signencrypt
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 mQINBFg2+xABEADBJW2hoUoFXVFWTeKbqqif8VjszdMkriilx90WB5c0ddWQX14h6w5bT/A8
 +v43YoGpDNyhgA0w9CEhuwfZrE91GocMtjLO67TAc2i2nxMc/FJRDI0OemO4VJ9RwID6ltwt
 mpVJgXGKkNJ1ey+QOXouzlErVvE2fRh+KXXN1Q7fSmTJlAW9XJYHS3BDHb0uRpymRSX3O+E2
 lA87C7R8qAigPDZi6Z7UmwIA83ZMKXQ5stA0lhPyYgQcM7fh7V4ZYhnR0I5/qkUoxKpqaYLp
 YHBczVP+Zx/zHOM0KQphOMbU7X3c1pmMruoe6ti9uZzqZSLsF+NKXFEPBS665tQr66HJvZvY
 GMDlntZFAZ6xQvCC1r3MGoxEC1tuEa24vPCC9RZ9wk2sY5Csbva0WwYv3WKRZZBv8eIhGMxs
 rcpeGShRFyZ/0BYO53wZAPV1pEhGLLxd8eLN/nEWjJE0ejakPC1H/mt5F+yQBJAzz9JzbToU
 5jKLu0SugNI18MspJut8AiA1M44CIWrNHXvWsQ+nnBKHDHHYZu7MoXlOmB32ndsfPthR3GSv
 jN7YD4Ad724H8fhRijmC1+RpuSce7w2JLj5cYj4MlccmNb8YUxsE8brY2WkXQYS8Ivse39MX
 BE66MQN0r5DQ6oqgoJ4gHIVBUv/ZwgcmUNS5gQkNCFA0dWXznQARAQABtCZNYXJrdXMgRWxm
 cmluZyA8TWFya3VzLkVsZnJpbmdAd2ViLmRlPokCVAQTAQgAPhYhBHDP0hzibeXjwQ/ITuU9
 Figxg9azBQJYNvsQAhsjBQkJZgGABQsJCAcCBhUICQoLAgQWAgMBAh4BAheAAAoJEOU9Figx
 g9azcyMP/iVihZkZ4VyH3/wlV3nRiXvSreqg+pGPI3c8J6DjP9zvz7QHN35zWM++1yNek7Ar
 OVXwuKBo18ASlYzZPTFJZwQQdkZSV+atwIzG3US50ZZ4p7VyUuDuQQVVqFlaf6qZOkwHSnk+
 CeGxlDz1POSHY17VbJG2CzPuqMfgBtqIU1dODFLpFq4oIAwEOG6fxRa59qbsTLXxyw+PzRaR
 LIjVOit28raM83Efk07JKow8URb4u1n7k9RGAcnsM5/WMLRbDYjWTx0lJ2WO9zYwPgRykhn2
 sOyJVXk9xVESGTwEPbTtfHM+4x0n0gC6GzfTMvwvZ9G6xoM0S4/+lgbaaa9t5tT/PrsvJiob
 kfqDrPbmSwr2G5mHnSM9M7B+w8odjmQFOwAjfcxoVIHxC4Cl/GAAKsX3KNKTspCHR0Yag78w
 i8duH/eEd4tB8twcqCi3aCgWoIrhjNS0myusmuA89kAWFFW5z26qNCOefovCx8drdMXQfMYv
 g5lRk821ZCNBosfRUvcMXoY6lTwHLIDrEfkJQtjxfdTlWQdwr0mM5ye7vd83AManSQwutgpI
 q+wE8CNY2VN9xAlE7OhcmWXlnAw3MJLW863SXdGlnkA3N+U4BoKQSIToGuXARQ14IMNvfeKX
 NphLPpUUnUNdfxAHu/S3tPTc/E/oePbHo794dnEm57LuuQINBFg2+xABEADZg/T+4o5qj4cw
 nd0G5pFy7ACxk28mSrLuva9tyzqPgRZ2bdPiwNXJUvBg1es2u81urekeUvGvnERB/TKekp25
 4wU3I2lEhIXj5NVdLc6eU5czZQs4YEZbu1U5iqhhZmKhlLrhLlZv2whLOXRlLwi4jAzXIZAu
 76mT813jbczl2dwxFxcT8XRzk9+dwzNTdOg75683uinMgskiiul+dzd6sumdOhRZR7YBT+xC
 wzfykOgBKnzfFscMwKR0iuHNB+VdEnZw80XGZi4N1ku81DHxmo2HG3icg7CwO1ih2jx8ik0r
 riIyMhJrTXgR1hF6kQnX7p2mXe6K0s8tQFK0ZZmYpZuGYYsV05OvU8yqrRVL/GYvy4Xgplm3
 DuMuC7/A9/BfmxZVEPAS1gW6QQ8vSO4zf60zREKoSNYeiv+tURM2KOEj8tCMZN3k3sNASfoG
 fMvTvOjT0yzMbJsI1jwLwy5uA2JVdSLoWzBD8awZ2X/eCU9YDZeGuWmxzIHvkuMj8FfX8cK/
 2m437UA877eqmcgiEy/3B7XeHUipOL83gjfq4ETzVmxVswkVvZvR6j2blQVr+MhCZPq83Ota
 xNB7QptPxJuNRZ49gtT6uQkyGI+2daXqkj/Mot5tKxNKtM1Vbr/3b+AEMA7qLz7QjhgGJcie
 qp4b0gELjY1Oe9dBAXMiDwARAQABiQI8BBgBCAAmFiEEcM/SHOJt5ePBD8hO5T0WKDGD1rMF
 Alg2+xACGwwFCQlmAYAACgkQ5T0WKDGD1rOYSw/+P6fYSZjTJDAl9XNfXRjRRyJSfaw6N1pA
 Ahuu0MIa3djFRuFCrAHUaaFZf5V2iW5xhGnrhDwE1Ksf7tlstSne/G0a+Ef7vhUyeTn6U/0m
 +/BrsCsBUXhqeNuraGUtaleatQijXfuemUwgB+mE3B0SobE601XLo6MYIhPh8MG32MKO5kOY
 hB5jzyor7WoN3ETVNQoGgMzPVWIRElwpcXr+yGoTLAOpG7nkAUBBj9n9TPpSdt/npfok9ZfL
 /Q+ranrxb2Cy4tvOPxeVfR58XveX85ICrW9VHPVq9sJf/a24bMm6+qEg1V/G7u/AM3fM8U2m
 tdrTqOrfxklZ7beppGKzC1/WLrcr072vrdiN0icyOHQlfWmaPv0pUnW3AwtiMYngT96BevfA
 qlwaymjPTvH+cTXScnbydfOQW8220JQwykUe+sHRZfAF5TS2YCkQvsyf7vIpSqo/ttDk4+xc
 Z/wsLiWTgKlih2QYULvW61XU+mWsK8+ZlYUrRMpkauN4CJ5yTpvp+Orcz5KixHQmc5tbkLWf
 x0n1QFc1xxJhbzN+r9djSGGN/5IBDfUqSANC8cWzHpWaHmSuU3JSAMB/N+yQjIad2ztTckZY
 pwT6oxng29LzZspTYUEzMz3wK2jQHw+U66qBFk8whA7B2uAU1QdGyPgahLYSOa4XAEGb6wbI FEE=
Message-ID: <dd7867db-1089-7366-165f-6accba233c38@web.de>
Date: Sun, 14 Jul 2019 18:55:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190714164126.3159-1-iamkeyur96@gmail.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:vZwA6t8zqndRtGVxizFChrFjqPxVzyPNJ/KIb35UJp3mfnqAA22
 SCHwBhImtbpOZwdQQY0LjrTqHUX5BPcf7Jz/93Tamk6swJQxpPRDlvCtM4MCucEARo2bpk+
 64XNu0Cqc1LYgKg2+0X2RiyeOZKIU3xYe0N6rwmSCJ9mLpqO5MlfzYuiInpgJyMlaM/v7e6
 /cMkphkhWagUM1WWODH1g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:1v5xgRA0Jc0=:thd8tQRJpDb+q+7bx8Fq9B
 hv7IpNsCcr9pbgqTPdhnkU39aex3i2iLYO19YcdBZnWqV57rAizwUKlVI3vomyxXSvhgzrLWD
 M+20gfvI71UlD8WdzQj1Lq91ASsu+DIohrLWAGNp9xOCnjOXhMjpPvdzN0KixRMkX+eSyoI7M
 3LXtfvTItd5VWc2MvmVUTneBgNb2PlWBCCclcD6fhyGgNWi0UbL5C8SAGi0sAY8gvlgzDWEUY
 s9JjcUYZ/d/lqDvjyNgCm2ZjPOF6ADdfe6hDQNkvhm+7H3OfIkJbONOMcvUPqtceqvOJ7uQCn
 5zwdk1AqnzkLZw/Q0wfO9V560RD9PSHaUR84i37o9Osd/0O7+CZ9jGj0CnDsvtHLQw4M12VIV
 35fyS31QSbayeEh6yBu71VF6rc2wpLu2Hf66rY3VOY/8xmiY2FoWFvgPepWl2HcMXd8Ke+KQD
 43AyZ26BbmAqKglqilfofPwtj1vOYSbjLWXCXD3zCuKtRwNZdoHWR1PVupexWZ9bFrgm3e6Xd
 fRX33A+HTJQ9bu/VNibhM34lqv99AZ3Lcri3Yn5HT/jy75KBrhB1kZkbrPmt64B9LnWenGTtF
 60C5u91pLEejs6C+WkZDt0qSz+RNkZ0lxdWqp+iJeXz5WFyt8AWK/7deL9ALakp/cv46jktJk
 T8m63BcwIgbOLwL8SWPnpc1yabLcQjwTSHHrgS7n3IOQoQqVZPZiqkN/2p4+I4n2WWmwe3anZ
 VIP2cd5mXbIFf6mLsrPoezgLW+ZCtMu/jL9mV+6gDqTDE+rbh1I95M5BQd5K+9odxqmP4ljWE
 rTmh/lyG60rxiZJY97DpD5X2QdnmWI+ngB0lnmN3PpEPo5EhI24dXBtXT6VmylZpiNK4bfim5
 DWiZA5OVUbW8ZFjbAWdxN7YvEG1zsciNngRxslBNx18+wGUm03xuoZZ4EyiXfkXTdzx42aW4/
 Ile42J2VA/eCHKaXicsIeQZST/yrBrn0Wcf3TWiyg6ylO9TwWK7P6xitEmssl8ZYDhTRAkO7o
 8vTCf8S76T8t/gA8e9trNDAWiK8AFCp2LmdYyUivB7abceB6W4/p5ie0LrxzSDbfsP0G1cFpo
 r8i4S9HgQrPcMir7bFRIQqOcy83BhviKJLo
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Suresh Udipi <sudipi@jp.adit-jv.com>,
 Christian Gromm <christian.gromm@microchip.com>,
 Colin Ian King <colin.king@canonical.com>,
 Eugeniu Rosca <erosca@de.adit-jv.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> ---
> Changes in v4:

I find this change log still incomplete.

You have chosen to adjust the commit message once more.
(Some contributors might be also not satisfied with this variant.)

Such a change requires to increase the corresponding patch version number,
doesn't it?

Regards,
Markus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
