Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB23B2CC457
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Dec 2020 18:56:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4221D2E2A2;
	Wed,  2 Dec 2020 17:56:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aCx5-QP5Diuz; Wed,  2 Dec 2020 17:56:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2F1DD2E29B;
	Wed,  2 Dec 2020 17:56:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9DD691BF3BE
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 17:56:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9A6A78721E
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 17:56:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bfQaIV-3SxpY for <devel@linuxdriverproject.org>;
 Wed,  2 Dec 2020 17:56:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 593A8871DE
 for <devel@driverdev.osuosl.org>; Wed,  2 Dec 2020 17:56:50 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id t7so1236380pfh.7
 for <devel@driverdev.osuosl.org>; Wed, 02 Dec 2020 09:56:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to;
 bh=CL0A01P+maYseiHxrHxlIEDrdy1lMGOmceO6fYZOstg=;
 b=M5yj6iUJ2VyswI8pn2oSKBFkusTwo4PMBLts2zieHz1bklbBhj+XrmNeC4mkVqEdS/
 jY86c6Ees2+KfYv8AR2/iP6wt8DeIXj+G60zQ+KbOCz96xC1yeDq4OEGwhQJPuN4YtDZ
 8Gk35Xhui4BYnO6gfJOmjXCkcqI7DmcfxZkj4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to;
 bh=CL0A01P+maYseiHxrHxlIEDrdy1lMGOmceO6fYZOstg=;
 b=URCuWz5N1mzEZa69gih0oCGBdYYOeGmjoaIq06AQUc8QnLSnISptV+CnTm/k7mXMt0
 o4fMczcocjThBroKO0/lw39VMF/E3PdIeWLtqqctfIo68dUlJ83Z1cptiaFGbiKGciOE
 nfJoB8xsEPA0Eba2ejSy8QK1fMwjn7u0lqai6EAPRAwXba6VtSqYjBkPmu8nu0N5CUSO
 dLynIGGMX5EreRjmxAPM3IDtyrXEXz0/Hod+T/0U2pMgAwv7p/6iCtUAG5jEIlc3SV+x
 RJRDHbX50tHTq3mA8Q3fePueaCCZTuYAcZOcoXTgKdU+8d+zLkwVYf7LERtPKFotiPzJ
 3xag==
X-Gm-Message-State: AOAM532zZX/2Kh2bWiNlwv1/Fm716+ymqjOXAI1oCISif9qWl9Tb03AZ
 a4c/Fbdaq3E9dL7/miS5M57KvQ==
X-Google-Smtp-Source: ABdhPJxBe044BSxWCPiEeTi93ZhPm7YYKKxN40yOk58k6np08WWXwO/od1vrZpNwuxokEC+Wbx0dOQ==
X-Received: by 2002:aa7:9606:0:b029:198:14c4:4f44 with SMTP id
 q6-20020aa796060000b029019814c44f44mr3903103pfg.80.1606931809755; 
 Wed, 02 Dec 2020 09:56:49 -0800 (PST)
Received: from [10.230.28.242] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a21sm287155pjq.37.2020.12.02.09.56.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Dec 2020 09:56:48 -0800 (PST)
Subject: Re: [PATCH v5 07/11] staging: vchiq: Release firmware handle on unbind
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 u.kleine-koenig@pengutronix.de, linux-kernel@vger.kernel.org
References: <20201123183833.18750-1-nsaenzjulienne@suse.de>
 <20201123183833.18750-8-nsaenzjulienne@suse.de>
From: Florian Fainelli <florian.fainelli@broadcom.com>
Message-ID: <3bad2612-6280-b362-8239-493e4cc87509@broadcom.com>
Date: Wed, 2 Dec 2020 09:56:46 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201123183833.18750-8-nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org, f.fainelli@gmail.com,
 devicetree@vger.kernel.org, sboyd@kernel.org, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, dmitry.torokhov@gmail.com,
 linux-gpio@vger.kernel.org, andy.shevchenko@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 p.zabel@pengutronix.de, linux-input@vger.kernel.org, bgolaszewski@baylibre.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6560823873393564143=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============6560823873393564143==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000b91dcb05b57ef79b"

--000000000000b91dcb05b57ef79b
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 11/23/2020 10:38 AM, Nicolas Saenz Julienne wrote:
> Use devm_rpi_firmware_get() so as to make sure we release RPi's firmware
> interface when unbinding the device.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

--000000000000b91dcb05b57ef79b
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
NBgcnL8bS1GD7jRZUdtUvDm/XhPjv+5arhlrB5NmaKDsRaobcoQ0vtEyAnImSb64+wEvXgPF3y7V
0LCIoQMCAwEAAaOCAdQwggHQMA4GA1UdDwEB/wQEAwIFoDCBngYIKwYBBQUHAQEEgZEwgY4wTQYI
KwYBBQUHMAKGQWh0dHA6Ly9zZWN1cmUuZ2xvYmFsc2lnbi5jb20vY2FjZXJ0L2dzcGVyc29uYWxz
aWduMnNoYTJnM29jc3AuY3J0MD0GCCsGAQUFBzABhjFodHRwOi8vb2NzcDIuZ2xvYmFsc2lnbi5j
b20vZ3NwZXJzb25hbHNpZ24yc2hhMmczME0GA1UdIARGMEQwQgYKKwYBBAGgMgEoCjA0MDIGCCsG
AQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzAJBgNVHRMEAjAA
MEQGA1UdHwQ9MDswOaA3oDWGM2h0dHA6Ly9jcmwuZ2xvYmFsc2lnbi5jb20vZ3NwZXJzb25hbHNp
Z24yc2hhMmczLmNybDAoBgNVHREEITAfgR1mbG9yaWFuLmZhaW5lbGxpQGJyb2FkY29tLmNvbTAT
BgNVHSUEDDAKBggrBgEFBQcDBDAfBgNVHSMEGDAWgBRpcoJiMWeVRIV3kYDEBDZJnXsLYTAdBgNV
HQ4EFgQUjDSG6itHmsBGYhab0ncHg6PidD0wDQYJKoZIhvcNAQELBQADggEBAJD+OK9GMwW86kdo
oTOaDH8VAbGtc3cvxHH/zTSRaq+XQOUwzXeB35AgKQ7VnnW+AYsU0NILbJUrAUGctIt4fMgPi+fZ
1SJxTyzKxS0LCahS3l9aL3TEWyFOnDurmKeLcgVG5qMVXysLYDXiUGGg1I/zmOHefpv30RDNdUjD
9oUbBggB6IHlL4Y6x21gV6Cduse0xOgMrY+dXhntQimTLmuPz0b3uUVJNdtTqVG5pZwZZ/cjsGCm
QTlT5kx0VnHRHhYKS+1b2usAYk+pec77Wth9xL1gsEGVh4JmIdQpkhqGHA/m2nVkhW/WbbFsA7Im
9CNMvmz2hVgGGipcf47g+EsxggJvMIICawIBATBtMF0xCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBH
bG9iYWxTaWduIG52LXNhMTMwMQYDVQQDEypHbG9iYWxTaWduIFBlcnNvbmFsU2lnbiAyIENBIC0g
U0hBMjU2IC0gRzMCDE64Wkk+BtY98mx37TANBglghkgBZQMEAgEFAKCB1DAvBgkqhkiG9w0BCQQx
IgQgCe0rNE/gu4F2iMflekC2RvUsUovFbc76TLB+OjWKpcwwGAYJKoZIhvcNAQkDMQsGCSqGSIb3
DQEHATAcBgkqhkiG9w0BCQUxDxcNMjAxMjAyMTc1NjUwWjBpBgkqhkiG9w0BCQ8xXDBaMAsGCWCG
SAFlAwQBKjALBglghkgBZQMEARYwCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMAsGCSqGSIb3DQEB
CjALBgkqhkiG9w0BAQcwCwYJYIZIAWUDBAIBMA0GCSqGSIb3DQEBAQUABIIBAHD2TQJkBFDdaKpx
5IwGKRdVSCqafYi9EbCZzUnQGtDBQcWOUsgmkubyGiXUBajp1o/l2XBtjK4hRRi7VrDaF0f52yRw
8QgxPWS6edKoaZuNQAtBbDLBv0g+V7xNFdqF6AvCVuCTjUPqbRYhJ7twF5sMX0iu0E9pyRAGInMz
1QkHTwJ1sWQo7q5NG3mOHcSmitC8kyab2HLNa+GG18qPBO0HeVmR0P52EGoMWmELqJjKsMu6kJrv
KBD2Ot6IW+hwXySsmcoiE19J+wZT0BE1oh7fkf8wbu3FQsk2u1VPCzstBCXwg72H0BAsHj8HAZFW
+VX7ZvY68bRYsgHPurwWEZE=
--000000000000b91dcb05b57ef79b--

--===============6560823873393564143==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6560823873393564143==--
