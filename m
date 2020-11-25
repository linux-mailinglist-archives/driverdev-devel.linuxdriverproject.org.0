Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6472C483A
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Nov 2020 20:28:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E439287684;
	Wed, 25 Nov 2020 19:28:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j1X7Leu-dVxl; Wed, 25 Nov 2020 19:28:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5BFFD8767E;
	Wed, 25 Nov 2020 19:28:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AD7E01BF4DD
 for <devel@linuxdriverproject.org>; Wed, 25 Nov 2020 19:28:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A6C1A8701E
 for <devel@linuxdriverproject.org>; Wed, 25 Nov 2020 19:28:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PzvVb9oiysJL for <devel@linuxdriverproject.org>;
 Wed, 25 Nov 2020 19:28:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0373387005
 for <devel@driverdev.osuosl.org>; Wed, 25 Nov 2020 19:28:11 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id 1so3199916wme.3
 for <devel@driverdev.osuosl.org>; Wed, 25 Nov 2020 11:28:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:from:mime-version:content-transfer-encoding
 :content-description:subject:to:date:reply-to;
 bh=MT4M9SX2NqdNuOObXhIV8Gtkw+yoDX+gRyJnh+feBwM=;
 b=ZuF9EXNHBfYyCKIRYekZRabWfXoMB+i5NYJ/a/humMUWGe94KQ7PbN5x4vwsD+SMVE
 iqKVRBQQf81LVtEQsHXi85HF4hc4buWl3jqpUXVQvJa63jbbtwRmIcPQEWs8gn9CmQM2
 wxHAtDZhFVotnW8S3Pk14W7NaX1ZcDiXd6V1kF5646uBLgTPJfy5SIhSsESFa64sEGfu
 IwFXeJ3lv8ogPr1WLJ4Hj4CDqfnIeqo7xRfbDcoPXXNQf22YAktIUkPaCPiLx8uAhSXP
 JC7pN5I5t9yZeiJm8RO2jOpa7abJqD1mgjGKjgC5SYDr8CBy5tCEuHShqUGQcpq2mokY
 4O5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:from:mime-version
 :content-transfer-encoding:content-description:subject:to:date
 :reply-to;
 bh=MT4M9SX2NqdNuOObXhIV8Gtkw+yoDX+gRyJnh+feBwM=;
 b=Jlohlhr5ryIakesW3+OEngaz8cL8ceBz+OxCd/l/VfOW/fShy10GCC3xU4nAV80RCp
 sQDRQB3neuin0LVrpn4jAB+v8Iycu8g1dgQ90SiQqmcHsD8A/vl2J/p7sDiJ4Z73+CMc
 ujq2jxSkgDIcUKWPfx6zX/l9+S1jMrCySNaRsOAMdgGGhWWLWUVa3tBN2Eedck+ALg01
 OdipLTE3/+P06az27B+sBWdaz5csG+mSxhGAoCDuDWhjKyN2f9bDBjpNJGXEw3v4M3km
 I2uYC8tb5/m/leEHwCp2FJwV0m5kLnRaggSnH3ztAdYupuq+o/6hOZkz6n8k+lMQFyec
 bWEg==
X-Gm-Message-State: AOAM530KyFfozRNzEAy8lPpby53tc03aBQTrpmuF/TZfD2ZS8olLjlJa
 iKmGpm5+k3D0HcglTwPH7y0=
X-Google-Smtp-Source: ABdhPJy2TdQ56ICyLCDiXwRP/IryuZ4l2N7ZKfwNIkfkGXtbWBIogpokys3pNLvS1o8KY+x4nwqB3w==
X-Received: by 2002:a1c:e206:: with SMTP id z6mr5752423wmg.49.1606332489470;
 Wed, 25 Nov 2020 11:28:09 -0800 (PST)
Received: from [192.168.1.152] ([102.64.149.89])
 by smtp.gmail.com with ESMTPSA id l16sm6067999wrx.5.2020.11.25.11.28.03
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Wed, 25 Nov 2020 11:28:08 -0800 (PST)
Message-ID: <5fbeb048.1c69fb81.80257.d7bb@mx.google.com>
From: "Dailborh R." <ritundailb111@gmail.com>
X-Google-Original-From: Dailborh R.
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Please reply to me
To: Recipients <Dailborh@osuosl.org>
Date: Wed, 25 Nov 2020 19:27:51 +0000
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
Reply-To: dailrrob.83@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I'm Dailborh R. from US. I picked interest in you and I would like to know
more about you and establish relationship with you. i will wait for
your response. thank you.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
