Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5BD21223F
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 13:27:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 25DCD87D0E;
	Thu,  2 Jul 2020 11:27:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CAVH9V77Puup; Thu,  2 Jul 2020 11:27:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1C19987B43;
	Thu,  2 Jul 2020 11:27:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 658B81BF59B
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 11:27:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 625138AFA1
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 11:27:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xqL2T53W5upn for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 11:27:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C50338AA1E
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 11:27:26 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id 67so8351999pfg.5
 for <devel@driverdev.osuosl.org>; Thu, 02 Jul 2020 04:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xxVvosb2amin9BFIRGrxAO+BSau+UIIa0mUkKu+/RSI=;
 b=HwiYMHSNLGiPTj+eLoFYYCv8STpwSN+aakDFtwggFi06ZTR2rO9t4ieR6D8DYjOnFF
 CvtbEtrGTAyfxb4OVQhaeoHY0A4C5Oyt96WExj+7OQhIjay3oIbipdAZkjWqKoVKvdvu
 jD8rD+Pps9oMy05HYAhqiociLu200xBOfYthTHu04k5Y6Lg3jnXDh6sg+aOXm30V6Tpy
 LsgniJQH7U8PCY6WgucdlS6pUhxa1xf4IMN+Q0iRzF+OIU8Lksk0jJTArBvZFp3EvfO1
 7fidzsSCCg4bpmWczHlIYqiujSidsEdQ4q7HCdhSmzwX+oV7/DSaDvpkIuLmntvxfFMv
 oXSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xxVvosb2amin9BFIRGrxAO+BSau+UIIa0mUkKu+/RSI=;
 b=tBj+ke075uLqdZUOiETiLK9gOGoDSroA5SeqiaZQ1RUczrcbn7KMZk2QEOE30pEqdj
 3dM151RkuI8ikS8k8DEqaHmf6Oxwe6DaS2Qbs50Qr9URbl9vxLplDwFnsY/W66JcYrDA
 rjDgZhb/sViqbwKHw7G3EczVHweHLDP37jMQZVG3ntTjuCAht/+5s5u28mCIMKxKVimP
 wb16GKe3gxagqGbYLBDSDVOll0oJXSSu6uGepbZN7hD3lqsscMzEHBy277G7pvo7gwbr
 iaVoeVI54OKLRJv1KOvTlOOYrct2aIS04GZdhCRfcrQBfwqY1ZSHB+4caAWlfnsHc0z3
 slIA==
X-Gm-Message-State: AOAM530ysxkACv1yXPjzHJNJ0UE66R3WSAp36F1HEEC1/3Fw3ur9HTsf
 JF5fXlHlnfz3qCxkDoD27CnquQ==
X-Google-Smtp-Source: ABdhPJx0kIoo4VzR6JkF+6ePeKECGCTXNBmGrMrL+khrUcm1al6vHhwWigbEzCR55cqth/kw9a2/1g==
X-Received: by 2002:a65:478a:: with SMTP id e10mr23853468pgs.146.1593689246428; 
 Thu, 02 Jul 2020 04:27:26 -0700 (PDT)
Received: from localhost ([2406:7400:73:3271:908:f18a:1156:5c38])
 by smtp.gmail.com with ESMTPSA id k92sm7885691pje.30.2020.07.02.04.27.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jul 2020 04:27:25 -0700 (PDT)
Date: Thu, 2 Jul 2020 07:27:18 -0400
From: B K Karthik <bkkarthik@pesu.pes.edu>
To: B K Karthik <karthik.bk2000@live.com>
Subject: [PATCH 2/2] staging: rtl8188eu: include: rtw_pwrctrl.h: fixed a
 blank space coding style issue.
Message-ID: <20200702112718.igdpcicprid74pyj@pesu-pes-edu>
References: <20200702112210.th4aiiszhdtufbpe@pesu-pes-edu>
MIME-Version: 1.0
In-Reply-To: <20200702112210.th4aiiszhdtufbpe@pesu-pes-edu>
User-Agent: NeoMutt/20180716
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: multipart/mixed; boundary="===============4990995131119042141=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============4990995131119042141==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="il2oqzpbqvyo7t3t"
Content-Disposition: inline


--il2oqzpbqvyo7t3t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

add blank spaces to improve code readability.

Signed-off-by: B K Karthik <karthik.bk2000@live.com>
---
 drivers/staging/rtl8188eu/include/rtw_pwrctrl.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h b/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h
index c89328142731..b4cf0f1ce6d3 100644
--- a/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h
+++ b/drivers/staging/rtl8188eu/include/rtw_pwrctrl.h
@@ -84,7 +84,7 @@ struct reportpwrstate_parm {
        unsigned short rsvd;
 };

-#define LPS_DELAY_TIME (1*HZ) /*  1 sec */
+#define LPS_DELAY_TIME (1 * HZ) /*  1 sec */

 #define EXE_PWR_NONE   0x01
 #define EXE_PWR_IPS            0x02
--
2.20.1


--il2oqzpbqvyo7t3t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEpIrzAt4LvWLJmKjp471Q5AHeZ2oFAl79xJUACgkQ471Q5AHe
Z2os7wv+NYI8O0JJ4pDIYcg7pg3GvyVcwoP6mQWhqjP8V6ffl4iQ81Fra9bVxY3D
Zk6il9x7b1OQPpg1IcroQ26+asY/i7m6cPyYEOCmZbm89NmHNY9jFNtZB6tGMWp+
vQeCf8Bxh0VVlKB1/pDdSq3xYLR5xvFwYwsLT77bHjxIDuB2JPw5UauJdluPDmOH
7+/cP48TcWe+xR77TNWCnL+ldOStSCOJ3IlmxZqXyX4gsVyIKoXFGyg4YK8rPNR7
efKbpdwK761IfpfzW2FYiakJculdkQ2xtQWvgvLdqai5KMv+r1hcChVCOo3kYch0
oGfVol+YaONoLlSFkKuB8oS2rbhHKePSsPuoLKIcSVke6hGulUVq7zfR6NMXmnQw
wnPDsubkTlRRTxcMoVF5TEWWPGxi72TLFgZZengE9q6zdbkCmCN7cyFg4Xr17qT2
/6FHmJNt45tvOFDMhywLAb9z/uB3HOY/7NyczbZ6gTtn396CwV/xMpjrPNcj8THm
Ku0TDAFC
=P3nI
-----END PGP SIGNATURE-----

--il2oqzpbqvyo7t3t--

--===============4990995131119042141==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4990995131119042141==--
