Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D34BD60F6C
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Jul 2019 10:16:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 96A692049B;
	Sat,  6 Jul 2019 08:16:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RldUDS84tYv2; Sat,  6 Jul 2019 08:16:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CAFDE2049E;
	Sat,  6 Jul 2019 08:16:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 50BB01BF357
 for <devel@linuxdriverproject.org>; Sat,  6 Jul 2019 08:16:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4DD2487820
 for <devel@linuxdriverproject.org>; Sat,  6 Jul 2019 08:16:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l7GrgM6fMJjK for <devel@linuxdriverproject.org>;
 Sat,  6 Jul 2019 08:16:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.web.de (mout.web.de [212.227.17.12])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1EDC4877E7
 for <devel@driverdev.osuosl.org>; Sat,  6 Jul 2019 08:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1562400935;
 bh=8+x5zb8M56IwLI9KqnivxYHcbPvMtQLoFq6LdrTZcLw=;
 h=X-UI-Sender-Class:To:From:Subject:Cc:Date;
 b=e6lFzOXYMJdhBNrlpiB0Cxflm9XRNDh3Z77KJOXvTVKiAFV1BMzlGQ8+iIVdyWfi3
 G60BG45DAi2hoafGV7MofID2q1YWSZCGhyt7Rta5YMD9Cqt06Jd9cC576nCLUqhDXo
 XSzlxyNRhbZHGw6NBVvzs6nD7T5VD253WP3D1nbQ=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([2.244.148.45]) by smtp.web.de (mrweb102
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0M1G68-1icjLr0fbk-00tDOq; Sat, 06
 Jul 2019 10:15:35 +0200
To: speakup@linux-speakup.org, devel@driverdev.osuosl.org,
 Bhagyashri Dighole <digholebhagyashri@gmail.com>,
 Chris Brannon <chris@the-brannons.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kirk Reiser <kirk@reisers.ca>, Okash Khawaja <okash.khawaja@gmail.com>,
 Samuel Thibault <samuel.thibault@ens-lyon.org>,
 William Hubbs <w.d.hubbs@gmail.com>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] staging: speakup: One function call less in
 speakup_win_enable()
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
Message-ID: <11f79333-25c3-1ad9-4975-58c64821f3fe@web.de>
Date: Sat, 6 Jul 2019 10:15:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
Content-Language: en-GB
X-Provags-ID: V03:K1:WjlotG6ZLpR1DGdwN0TbZpJZhsy0inkA5QNDz8Lra+YHLAkenpX
 6uTJUoF6l8DlszWFDC9KBgIu03P1RQKAR17RaIJCu1d0oqOT1q9zR949n4BovGEzpMPy5af
 21XUKqdgKCHrGJO0HBU8sJ40hgtujfdHd6eHfdHVpz8zHaQqiU5lY8TUohc9btrEt2XXgHq
 qJlsVNmwY9neJxWAoqL3A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:CFVnmFccx8k=:+ow3qAQZDdxIYGqSWCYYTR
 cAFXe5+6K239bkRRW+NMFuZB7Ken1PKaYsDQ45xEdCDkTP7eeEvPchw4yQ4WpD1a/H4Xyx7FS
 mgAWBjXUurbJ2DBeSS2jmF1K9Al41lK1p3T1W1m9h5MoqR91FVfz0kuEgwjYXdyFM2wTEqf0e
 kE6WeBXXdaD+dAGJhXXZXsF0fxURe/Zj4bWWQY3addZ52sZDnXtBwYdzV7XwtNYY0BFbgQyub
 sonfuGgUP8gm+RJ+98MqNTJKCqi/aitdQxnNR80gT+lMVEygfiJS9Vuc+pUO63IiBdj+15KkF
 G4fDpgRM8Zviqf+hFw43eP4VDD/KXmPOfx14hTZm4Lwko/Doax/E5B0/ZRLX8DCgS2xsmJ3Ts
 Iu339dYjvpVeeDFHkmnYNWFHx/mBJl/qH/UlG8Rc/syMv6yUL+Kuv2aANWL9hfxTLNt5agupv
 4FJV4Zqa8afkvnyC8vWz5zTacTXz32wsoH1txpMOGWPr8khomlbFOMnMXnwCRI+JWEcNwE/JS
 /qj0eKcFNyAKIUtNn/t4vl06zQfpz/0LzR1rjKM12eqti3Up4O/rL/ChvNVqtJThFTps6apsc
 OE9hfXdqTIyVkcxkwK0YWo8iByFnVo9OVpQyCXXo5+p+Htc9+8vJZPBUpTRf+t+DPDWDcl5/N
 5MSZqaa9cz+kTZOvtxUFrU5DV7qszb9oB0/K+j6DFnVX90FZmuTvrCfCuwfMg8p0BpwTKqAHL
 W6kdh/6dSgiN2p2mNGXGT8uTzSa0kwNDLT92KZFxJC1lMXxoxw0sssMRz+D6DF+MaFHn9y5s8
 VB4QIx15NE0pFiJXrHKoJTwJ7tCyFCMPvj+M3pe+ZNdM14wVnuPddZA9bk0/wSF7buPVHz0Df
 E4xaHtsg3hN76pPkxCda8HguXr//U2FfxCibNGTFdtG9knkwfqJZUkSAEZe2/NoCAXQjDdFKu
 ruwf3fC7RT6dDsTdDtQl06oeTpHep9T+vBsYUW0EzgY9Rijv2L9hZ0Lv4+k6ThPT/FcFslySN
 kz8/UaL+ZsJbeGHv5W1iVMh2wKMzS2DTi+XSk0ZXyAlFF9zr0BLikd6YNHnDXBDaBV8nzSdVg
 KjaHZcnyAG6XNY+q0cX2tEOls6zuhESzLRD
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Sat, 6 Jul 2019 10:03:56 +0200

Avoid an extra function call by using a ternary operator instead of
a conditional statement.

This issue was detected by using the Coccinelle software.

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 drivers/staging/speakup/main.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index 488f2539aa9a..03bbc9a4dbb3 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -1917,10 +1917,9 @@ static void speakup_win_enable(struct vc_data *vc)
 		return;
 	}
 	win_enabled ^= 1;
-	if (win_enabled)
-		synth_printf("%s\n", spk_msg_get(MSG_WINDOW_SILENCED));
-	else
-		synth_printf("%s\n", spk_msg_get(MSG_WINDOW_SILENCE_DISABLED));
+	synth_printf("%s\n", spk_msg_get(win_enabled
+					 ? MSG_WINDOW_SILENCED
+					 : MSG_WINDOW_SILENCE_DISABLED));
 }

 static void speakup_bits(struct vc_data *vc)
--
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
