Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C7C41FB3B
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 Oct 2021 13:54:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFEDD607F8;
	Sat,  2 Oct 2021 11:54:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GEqQwgRV5ZM9; Sat,  2 Oct 2021 11:54:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 529436079C;
	Sat,  2 Oct 2021 11:54:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 118E01BF327
 for <devel@linuxdriverproject.org>; Sat,  2 Oct 2021 11:54:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0D68640245
 for <devel@linuxdriverproject.org>; Sat,  2 Oct 2021 11:54:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iT6el7pO9XdQ for <devel@linuxdriverproject.org>;
 Sat,  2 Oct 2021 11:54:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com
 [IPv6:2607:f8b0:4864:20::22d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 57FAE4021B
 for <devel@driverdev.osuosl.org>; Sat,  2 Oct 2021 11:54:06 +0000 (UTC)
Received: by mail-oi1-x22d.google.com with SMTP id w206so15013576oiw.4
 for <devel@driverdev.osuosl.org>; Sat, 02 Oct 2021 04:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=eMBn4piUa5P7icXaukpkHUzeRwiwiWTIBVzdYRFqAwQ=;
 b=mS2TKV329tTBl5lk/k5CRH6ss2sA4my3EglDFpsXuiiv2GDY6bGlk2NKZKQoXX88fi
 qdfsDVZT2Pmkt0xKEK4jn2vn1a6tAt8aUFwHKYmAcC5nk0Gmp/7HO9ONDWo1qJ5FA6pC
 ttuZ5bVjfHfyNonDDiRUrJtF2xzPsdm/dt4jun4pD7V95P0vM2CtDdnP/xuCRePn73vS
 7MxlXKKaZLA8Ri0gaj1FaYeYtMwT6SjPLtkxGS0R0ssuE2MemzYPwx+EeaoxBpLZ50b1
 ETaLmt+m4zFoAKOGEWPicVm+l6OC3piJZa9tYp8c5ZLRPoGn5QyOvXSPyCq411BKZAMl
 bGBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=eMBn4piUa5P7icXaukpkHUzeRwiwiWTIBVzdYRFqAwQ=;
 b=yBojOWEpVgHIDzvZFYC/izc77I+26VTDWefdEiapW3X1o7nctSO+wzGSThyBIJP6Y4
 8dafIniimrK3JsluaRKLCiitmUC3AhP9aooSuKTup5R/5FiGH0+Z3u9W1VD3mn1Y4SZq
 YLjGwi97jzlUfEKJCcEEySjUlg2FQMFDnirNSUYCSOV3Dybl/iLXeLn0vAygMALiLMNx
 xKYIE6ooLmHlXleaPrRxpCfZFv4ibadNztrZ8R7cIrNRc89UYww436genNxUFQVzfRh4
 cJeFOmcN9/Oo3Ub43y//hGUrH4vGRDB+k0w1tzGyMAr2zHWNS9AOvxDl+h3lGQCuDTBR
 uZfQ==
X-Gm-Message-State: AOAM530Y+1Q+0IGzbHGL+WB7o3znh1TKCLUX6qClCvgyKxp0E8ZA+0Mp
 Tmjce5VIwV7AiHcxF4Q0U7ZidaP3rn+cLTuG/rY=
X-Google-Smtp-Source: ABdhPJx2NjQ8TADlnlVoS+u1iI6XGzgOWAs75ex3v41ZbqqUUIU1VTXRblDqLGPxWu+2HF6zbJoK1mAhaQ/TkmiDaqA=
X-Received: by 2002:a05:6808:17a9:: with SMTP id
 bg41mr7526618oib.88.1633175645410; 
 Sat, 02 Oct 2021 04:54:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6c91:0:0:0:0:0 with HTTP;
 Sat, 2 Oct 2021 04:54:05 -0700 (PDT)
From: POST OFFICE <postofficetogo2@gmail.com>
Date: Sat, 2 Oct 2021 13:54:05 +0200
Message-ID: <CAMPPJo0d=xeSPboKiR3wbF=36CyRaD7B9W+emgPVbdu=a_jQpg@mail.gmail.com>
Subject: =?UTF-8?B?576O5aW955qE5LiA5aSp77yM6Kaq5oSb55qE5pyL5Y+L77yM?=
To: undisclosed-recipients:;
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
Reply-To: mrsjanedennis1@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

576O5aW955qE5LiA5aSp77yM6Kaq5oSb55qE5pyL5Y+L77yMDQoNCue+juWlveeahOS4gOWkqe+8
jOaIkeimquaEm+eahOaci+WPi++8jOS9oOWlveWXju+8n+W+iOmVt+S4gOauteaZgumWk++8jOaI
keW+iOmrmOiIiOWcsOmAmuefpeaCqO+8jOaIkeWcqOaWsOWQiOS9nOWkpeS8tOeahOWQiOS9nOS4
i+aIkOWKn+i9ieenu+S6humAmeS6m+mBuueUouWfuumHke+8jOebruWJjeaIkeWcqOWNsOW6puea
hOWkluWci+aKleizh+mgheebruS4re+8jOaIkeiHquW3seS9lOS6hue4vemHkemhjeeahOS7vemh
jeOAguWQjOaZgu+8jOaIkeaykuacieW/mOiomOaCqOmBjuWOu+eahOWKquWKm+WSjOWYl+ippu+8
jOWNs+S9v+Wug+S7peafkOeoruaWueW8j+S9v+aIkeWAkeWkseaVl+S6hu+8jOS9huS7jeW5q+WK
qeaIkei9ieenu+S6humAmeS6m+mBuueUouWfuumHkeOAgg0KDQrnj77lnKjoga/nuavmiJHlnKjo
pb/pnZ7mtJvnvo7lpJrlk6XnmoTnp5jmm7jvvIzlpbnnmoTlkI3lrZfmmK8gTXJzLkphbmUgRGVu
bmlz77yM5aW555qE6Zu75a2Q6YO15Lu25Zyw5Z2AIChtcnNqYW5lZGVubmlzMUBnbWFpbC5jb20p
DQoNCuiri+WlueWQkeaCqOWvhOmAgee4vemHkemhje+8iDk1MCwwMDAuMDAg576O5YWD77yJ77yM
5oiR5L+d55WZ55qEIDk1IOiQrOe+juWFg+S9nOeCuuaCqOmBjuWOu+WcqOS6pOaYk+S4reWNlOWK
qeaIkeeahOaJgOacieWKquWKm+WSjOWYl+ippueahOijnOWEn+OAgg0KDQrmiJHpnZ7luLjmhJ/o
rJ3mgqjnlbbmmYLnmoTliqrlipvvvIzmiYDku6Xoq4vpmqjmmYLoga/nuavmiJHnmoTnp5jmm7jn
sKHCt+S4ueWwvOaWr+Wkq+S6uu+8jOS4puaMh+ekuuWlueWwh+e4vemHkemhjSAoJDk1MCwwMDAu
MDApIOeahCBBVE0g5Y2h5a+E5b6A5L2V6JmVDQoNCuaUtuWIsOW+jOiri+eri+WNs+mAmuefpeaI
ke+8jOiuk+aIkeWAkeS4gOi1t+WIhuS6q+eVtuaZguWPl+iLpuW+jOeahOWWnOaCheOAgg0KDQrp
gJnmrrXmmYLplpPmiJHlnKjpgJnoo6Hlvojlv5nvvIzlm6DngrrmiJHlkozmiJHnmoTmlrDlpKXk
vLTmnInmipXos4fpoIXnm67vvIzntYLmlrzoqJjlvpfmiJHlt7LntpPku6PooajkvaDlkJHmiJHn
moTnp5jmm7jovYnnmbzkuobmjqXmlLZBVE3ljaHnmoTmjIfnpLrjgIINCg0K5Zug5q2k77yM6KuL
6Zqo5pmC6IiH57ChwrfkuLnlsLzmlq/lpKvkurroga/nuavvvIzlpbnmnIPmr6vkuI3mi5blu7bl
nLDlsIfph5HpoY3nmbzpgIHntabmgqjjgIINCg0K5q2k6Ie077yMDQpBbmR5IENodWt3deWFiOeU
nw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
