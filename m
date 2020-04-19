Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2D11AF949
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Apr 2020 12:16:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C88A88780D;
	Sun, 19 Apr 2020 10:16:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1Hy+-eNoWXtf; Sun, 19 Apr 2020 10:16:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F33FE87807;
	Sun, 19 Apr 2020 10:16:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 668D61BF2B4
 for <devel@linuxdriverproject.org>; Sun, 19 Apr 2020 10:16:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6321C85629
 for <devel@linuxdriverproject.org>; Sun, 19 Apr 2020 10:16:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xGU8v9k4IG+F for <devel@linuxdriverproject.org>;
 Sun, 19 Apr 2020 10:16:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D220085608
 for <devel@driverdev.osuosl.org>; Sun, 19 Apr 2020 10:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587291296;
 bh=UUB43ghojZyqJzvryIRz1INl9pLMh7p0IJbFf5QP2Es=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=TNJ/SZf3+4mTpQq09XvbEyvPAHJj8RbOs1bUbeVrvmWwhamx3wKM6Wwxg489RXSoX
 Tvb/kBsBy80uXtHp1ki78P50zlijkGMUM6XBBHX4XFd/armTBMemJRMkfOSJ9W0gja
 zyVuriMRIJVHaBb0VfoQTQAhKNVInzofhzLWz6w4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MCKFu-1jZQeD43DG-009PuW; Sun, 19
 Apr 2020 12:14:56 +0200
Date: Sun, 19 Apr 2020 12:14:53 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Malcolm Priestley <tvboxspy@gmail.com>
Subject: Re: [PATCH 2/2] staging: vt6656: Fix functions' documentation
Message-ID: <20200419101453.GB3244@ubuntu>
References: <20200418123659.4475-1-oscar.carter@gmx.com>
 <20200418123659.4475-3-oscar.carter@gmx.com>
 <adc4bc72-5c80-e8f4-8d48-052109ae18b7@gmail.com>
 <20200419074717.GA3244@ubuntu>
 <42190e0e-4167-3cd6-0e52-d240ae67a502@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <42190e0e-4167-3cd6-0e52-d240ae67a502@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:uGVWodHyCTLdQ3XSyWqGBZ4gQuQDAHqGOos9oFi6KdRRLurA2TE
 /W+2OrlkPNeLluPXom2bihOZ14hvB6pWiAHLFLenr/3WGp2S336HJ5ruDal0aQUR7rztnTw
 f3VMb037pQIrOYptMrcdZNQQwVrGJmGsJ6jG7o0vRlqWOMjqeRQERobCJ6Cun2tRb4pfJuH
 Hb6Chks/Vf+S0eEwb4RZQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:i0sX5EJMf+I=:LUHt9YIF5DCp27j010j+Ig
 FhgIyn9jwz2q4dsefuegfy2wsFt0ctImsaTmMr6bqF8pWYARk57rok42ttTC8Qh1Yy9sbtrMg
 ihzXGYLDJBgEDD7OJjTsfnHkJVsjFVXS7BSDuUttu8GinuvsWs/WIzqpmY5zz2IkC0wR5rhom
 vkxRmJy0BU2uYAVk5iJjJdB9Nc+hcbDBoa/tqOJrTZ3pHNXi9fMb37spncRgzJVyOTCbbzgkN
 whIgfTO2MoSstXnfRdIsDuaIWDBL2Mi8zXATRjX8yGz4qUkVMIUYGD/PgzpalsmA7vig1nQUp
 FnE/cul4yLnny3hrxqX1KqBK7CPBYuJxFcuPTG3lMYOb7TQp2uO2pKlCLJiH80RSA79IZdedr
 CdjStDLrLaOaU8I3S/FrFPjVFcZg+cjSh7oFf0G3Pu7KXs9gPPc5NUCHGUkOa9Uuc0CmNpl2x
 cyCaf/VVvKIZ74loeN6+ariHNnExq9zctMPsSqCDI9jBrZV7D2XsQH9FNLDw3MCNmqMcBO1Oa
 8aY60w4SVYEjz+pCWkhkBkk/6uEBmZ/my0vErgetSsxE680ffmleUAtyCZSqYeM3fSksN6VyQ
 k9mHI5JbDpr5HqOAlnJUWMfdxmaCNG4zxzsSUBTR2V2BHJO0+brR2l68dT/eoD5LCTq1qwK87
 UXc7CD0eDv2V0QKVuV8XG77i2c1WHtbr1FWXVisfQoAeZdxY8JdMi3czYjRAicYv+mCxxT3P7
 w40C3BxcuttRDrHWmvzGRTXEhaFA+YYVbQyrjStpB39t+eYR7/AGqiEsUFE9roxUtD8FrRiUt
 tOTU1rhJFAmoSurqwoydx3y2zKorUsSc1cAt1yoVmkON57jOZP3xabwxkowPZpAYumGXG7q8I
 lRwE/37G7iOlyUVCa67r9Lb2ToWsx3He3XkE+RG9+jO6wwtWe4H8ogA3GkaU7stzU58ydDuzg
 EdW44xBRs/blD8nysJAa3XNfdXAMGU3n5LKaZNq1DwbgP8VTsEbq29PEXGhvyCDwrx6HgstFj
 eY5nY31S2zyWjDlQq56SgerOaDGTtQ/sylD28TYHT3NBxqvxhGPIf8skT7u2k9zdVmn14VCTt
 y4cF0GYeyG0Y2PBQVjzsyHgP4xSupg5pvW+CuevBQ+w3O5Z3cG91J/MTyX6xeFa3rTw2tpRzZ
 2ZPtJP9mbRYWbAvqTzqoObxbXUu9ls5GkVdVYUnTuMpB+ioWa97e0ALqAuGA3oHNWfTAriJ8M
 m7/JlmOW9JPCBd3e8
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "John B.  Wyatt IV" <jbwyatt4@gmail.com>, linux-kernel@vger.kernel.org,
 Stefano Brivio <sbrivio@redhat.com>, Forest Bond <forest@alittletooquiet.net>,
 Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Apr 19, 2020 at 10:22:50AM +0100, Malcolm Priestley wrote:
>
>
> On 19/04/2020 08:47, Oscar Carter wrote:
> > On Sat, Apr 18, 2020 at 07:05:53PM +0100, Malcolm Priestley wrote:
> >> Actually I don't really think the function descriptions are needed at all the
> >> names of the functions are enough.
> >>
> > Then, it would be better leave the documentation as it was before or remove it?
> >
>
> I would remove them all except for comments inside functions.
>
Ok, then I make the suggested changes and send a new version serie.

> Regards
>
> Malcolm

Thanks,
Oscar Carter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
