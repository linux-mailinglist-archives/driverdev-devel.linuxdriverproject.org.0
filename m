Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CAF45AFED
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Nov 2021 00:14:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 92534817EB;
	Tue, 23 Nov 2021 23:14:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uHylnr5h_SUm; Tue, 23 Nov 2021 23:14:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A06FE81846;
	Tue, 23 Nov 2021 23:14:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D5DB51BF47E
 for <devel@linuxdriverproject.org>; Tue, 23 Nov 2021 23:14:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C415F403D2
 for <devel@linuxdriverproject.org>; Tue, 23 Nov 2021 23:14:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VA9wwdvGwBMd for <devel@linuxdriverproject.org>;
 Tue, 23 Nov 2021 23:14:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com
 [IPv6:2607:f8b0:4864:20::b33])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C66F7403D1
 for <devel@driverdev.osuosl.org>; Tue, 23 Nov 2021 23:14:21 +0000 (UTC)
Received: by mail-yb1-xb33.google.com with SMTP id v138so1758620ybb.8
 for <devel@driverdev.osuosl.org>; Tue, 23 Nov 2021 15:14:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:in-reply-to:references:from:date:message-id
 :subject:to; bh=8YefciyY8ODsLHs6dnysg1GoDMAPCTtNvXqSnG3+7jU=;
 b=jGgVhghi++3o2UoNlz5RBEUwjFH5hu/pfCI1NhRjtD6ha0e+c2zkPOfxBDJO9Wsju0
 h7DpVE4RlEQXZ/6fRf1gRkqkP8PWxWLg1S0LDS563wPEmy5H35lSt7/L+ZfYzYYa8ra5
 sh2dWP2gANw935B9Ox1ty3PF80Y0attCJIhn4ZpcSRUeiijUYCdiVFih45NdBCa+XMZJ
 +vWRyGFUPi+/Fk4T7/qYl0QUaLzP/SN1yrsoZyUFdF010lEjGChatH+UTQd9oqFR5WTe
 IQI7J/jCJYExl6YErblISNG6q10zryty8HTuenm4tDBF5VDku1dlwTetkLDl1+lp58fH
 nv0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
 :from:date:message-id:subject:to;
 bh=8YefciyY8ODsLHs6dnysg1GoDMAPCTtNvXqSnG3+7jU=;
 b=qvqss003sjvn7VM5qtScpn01i18cM2CT9Vp70LT1E15WkpS9lxRJWrFMXq2NfNTGJx
 Vb38Mofx6uqTFsf9XOFbecUr/nQuYAse6BVsOntA5aMT38hHwgX6EehjbuH2g9ORB8Lz
 ApThhN3Zo7Z71ScKrS3aKQh2Cc5Uk4V5N3LE8xSqiz+2yRWyUexfCnRlmaPFhcvYvhsG
 /Y5wsG2sRDYu5bbSSWQ2S6RK8ITIKOhL3WxuMkVVTDrVyN0gBeqLFmVsJrdlSXzRUpVy
 xIeobkrCuwAnXT5wRD1zxeD7klXYbMM9KJTGUHAiE4mn/6Zgfztw6h9Xxycq2Q1qWXcB
 pLXw==
X-Gm-Message-State: AOAM531LX5Jid+DyWPfFnDq/UyZBP6pQSJT9empduDZfblKX6LaVLgju
 K6rqEBQhyyrdpzLmq+GK2+Sb+fHBE2IrNqicOes=
X-Google-Smtp-Source: ABdhPJzgahBlkd6pbg4K7IS6EeZ35qJ5YuwAclEIOqiPTpS0uTLFO2gEwgsISeXurRd5XQ1VQq31MDT15/mx44pgpp8=
X-Received: by 2002:a25:2f13:: with SMTP id v19mr10410010ybv.410.1637709260745; 
 Tue, 23 Nov 2021 15:14:20 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7110:35a8:b0:102:6d2:8e94 with HTTP; Tue, 23 Nov 2021
 15:14:20 -0800 (PST)
In-Reply-To: <CA+fkpfe6jVHPm=TgD945WxcOWMxyx1ozFzof2-1=-1Ds_Bvh2g@mail.gmail.com>
References: <CA+fkpffFzBhuxRhOMM5X_Jte8b0FK2WMyQ5o=TpAN32P1GSFmg@mail.gmail.com>
 <CA+fkpff7Hw9RjJf7zwmFhhU5_KySmJa76VMOtjYUgBN_Q=2yXA@mail.gmail.com>
 <CA+fkpfesaKt0LrKTN2mBoBukTjXHmLMo5ptm-LwNqGxMTjBoLA@mail.gmail.com>
 <CA+fkpfe4hOD_dq8erGruJ5-NcpBKq1tgyv+SCXY=RsZ_7EkubA@mail.gmail.com>
 <CA+fkpfcFsA859saeuKjEhqqu8ZuDhdT9byyv4PSweGPWUp0LHQ@mail.gmail.com>
 <CA+fkpfe6jVHPm=TgD945WxcOWMxyx1ozFzof2-1=-1Ds_Bvh2g@mail.gmail.com>
From: robertskevin <kindnesschibuenyim@gmail.com>
Date: Tue, 23 Nov 2021 15:14:20 -0800
Message-ID: <CA+fkpfdN1ZtsrnU6neJ9=ODoFzkZmzzA4HSxt6-Lhe2S4ZKtdA@mail.gmail.com>
Subject: Very confidential
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
Reply-To: frankiebilla@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello dear, I wish to discuss about Late pilot Lewis Tonkinson
investment  project. Reply for more details, Regards.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
