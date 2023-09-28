Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A577B2888
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Sep 2023 00:45:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 54CF1818A2;
	Thu, 28 Sep 2023 22:45:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54CF1818A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m8WgJmerh1WH; Thu, 28 Sep 2023 22:45:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D582D8197D;
	Thu, 28 Sep 2023 22:45:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D582D8197D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7539B1BF263
 for <devel@linuxdriverproject.org>; Thu, 28 Sep 2023 22:45:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5BEAE42CD8
 for <devel@linuxdriverproject.org>; Thu, 28 Sep 2023 22:45:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5BEAE42CD8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wU___wRO053B for <devel@linuxdriverproject.org>;
 Thu, 28 Sep 2023 22:45:52 +0000 (UTC)
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com
 [IPv6:2607:f8b0:4864:20::1133])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 239F742CD7
 for <devel@driverdev.osuosl.org>; Thu, 28 Sep 2023 22:45:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 239F742CD7
Received: by mail-yw1-x1133.google.com with SMTP id
 00721157ae682-5a2379a8b69so7841007b3.2
 for <devel@driverdev.osuosl.org>; Thu, 28 Sep 2023 15:45:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695941151; x=1696545951;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
 b=SCNfHgUb8xjJB5Jli1rO5+pPzwOsEjtCFq0lsR6S8LTwj+is40iaD6HCkisD3/Y1Ey
 5kGWL/vz4Xna9uy8s3YgxLXGLBVYR2BHfFsboSLjrvhOxEnMRAyOl1kYEXuaVoFceNgE
 8ynzM5h6OHaDTswDVmvRrTkn58zBOMeYyGXzWmdiM8qe//foFVgRYUWtXeF9WgM06b+e
 woGNtesSYqE0XHGVuZ9AvPbfGlfk3d6rhtjkcyby4ZKd0mICG5Tf1t8+6unUSYS7cRX7
 t2mUZLkVOAdkgXcU4TJuRM3ahw/xvDg+FJkhiiQhXRnHJfc9kMdGFW8E3MdEuJHTy69D
 8DWQ==
X-Gm-Message-State: AOJu0Yx96czJNBDqC2rT+yGKPBbDikCvlTtTtFh85SSQv9KFlRQkAdYY
 GvQvmcbxHMe8RA6btgw7uKaD17P1iPRqCv23m1E=
X-Google-Smtp-Source: AGHT+IFlsOlyZomgh/PV2cH+hT1bZW2iNCTvLbShLtVsFWsvgMz2mkXDJOP1vHfR2tK0SU1tuKe0bHz/+bv9i9CjL74=
X-Received: by 2002:a81:de4e:0:b0:592:5def:5c0d with SMTP id
 o14-20020a81de4e000000b005925def5c0dmr2619393ywl.45.1695941150961; Thu, 28
 Sep 2023 15:45:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7010:1409:b0:386:8bb3:6703 with HTTP; Thu, 28 Sep 2023
 15:45:50 -0700 (PDT)
From: ken morgan <kenmorganchambershouse@gmail.com>
Date: Thu, 28 Sep 2023 22:45:50 +0000
Message-ID: <CALDkM7L8dz+axmdOtHD+tGXUiCAb3q+XQUcTWN=0bVJoD-Pxhg@mail.gmail.com>
Subject: Hello my friend, a very urgent and confidential message kindly get
 back to me for more details?
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695941151; x=1696545951; darn=driverdev.osuosl.org;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
 b=TjgadvlZbsULgTzQaS0+N7WDg7qlGmtIpoPI+/nL9Q42MyictlVM36or1VnkxxHj4Y
 VZRef3e2qBXAcL1OhNo+n4jPdD+08a1OXZnU1i81O5zL41KrlIZVVJrfiysmz8SvQ0Qk
 cQsIEpKZ5Taum25+RG3JLwYi2P6amSTsNaxXdz05z9V7Qt2zV3x43QgGFUmg14nAy4ay
 FFFbM9OMthIAT5/oAzyhYDOQt6j2KCIybm/9799j7G98jJJ/eFpDJ+6EoIxlNVLaQf5h
 HmwZvFQ39Ku4yovh/iKek1bsNKXz4KTEqdLOIRIRUZHdiqcn9smAXjy3Mvxr64JBh/pT
 Vt8A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=TjgadvlZ
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
Reply-To: kenmorganlawhouse@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
